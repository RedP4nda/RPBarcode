//
//  ImageLoader.swift
//
// Copyright (c) 2017 Florian PETIT <florianp37@me.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation
import CoreImage

public enum CodeGeneratorType : String {
    case Aztec      = "CIAztecCodeGenerator"
    case Code128    = "CICode128BarcodeGenerator"
    case CodePDF417 = "CIPDF417BarcodeGenerator"
    case QRCode     = "CIQRCodeGenerator"
}

open class RPBarcode {
    
    /**
     Creates an UIImage from a data string
     - parameter string:        the string used to generate the code
     - parameter type:          the type of code to be generated
     - returns an UIImage
     */
    open class func generate(from string: String, type: CodeGeneratorType) -> UIImage? {
        
        guard let filter = CIFilter(name: type.rawValue) else {
            return nil
        }
        
        let data = string.data(using: String.Encoding.ascii)
        filter.setValue(data, forKey: "inputMessage")

        guard let ciImage = filter.outputImage else {
            return nil
        }
        
        return UIImage(ciImage: ciImage)
    }
}
