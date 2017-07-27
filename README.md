RPBarcode
============

[![Build Status](https://travis-ci.org/RedP4nda/RPBarcode.svg?branch=master)](https://travis-ci.org/RedP4nda/RPFramework)
[![Twitter](https://img.shields.io/badge/twitter-@Florian_MrCloud-blue.svg?style=flat)](http://twitter.com/Florian_MrCloud)

# Disclaimer:

- This program is still under active development and in its early stage, consider that breaking changes and rewrites could occur before using it in a stable version


RPBarcode is a Barcodes & QRCodes generator utility that uses CoreImage filters to display these codes inside iOS Apps

- [Features](#features)
- [The Basics](#the-basics)
- [To Do](#to-do)
- [Contributing](#contributing)
- [Installation](#installation)

# Features:

- Barcode generation
- QRCode generation
- ...

# The Basics

### How to generate:

```swift
if let generatedImage = RPBarCode.generate(from: "3760037693503", type: .Code128) {
  // do something with the generatedImage
  codeImageView.image = generatedImage
}
```

# Installation
### Cocoapods
RPFramework can be added to your project using [CocoaPods](http://cocoapods.org) by adding the following lines to your `Podfile`:

```ruby
source 'https://github.com/RedP4nda/Specs'

pod 'RPBarcode', '~> 1.0'
```

## Contributors
[![MrCloud](https://avatars2.githubusercontent.com/u/486140?s=100)](https://github.com/MrCloud)

## Partner
<img src="https://github.com/MobileTribe/pandroid/raw/master/pandroid-doc/assets/partner/lm.jpg" width="100" height="100" />

# Contributing

Contributions are very welcome 👍😃.

Before submitting any pull request, please ensure you have run the included tests (if any) and they have passed. If you are including new functionality, please write test cases for it as well.
