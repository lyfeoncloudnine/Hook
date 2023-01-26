# Hook

[![CI Status](https://img.shields.io/travis/lyfeoncloudnine/Hook.svg?style=flat)](https://travis-ci.org/lyfeoncloudnine/Hook)
[![Version](https://img.shields.io/cocoapods/v/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)
[![License](https://img.shields.io/cocoapods/l/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)
[![Platform](https://img.shields.io/cocoapods/p/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)

## Quick Guide

```swift
let yellowView = UIView()
yellowView.backgroundColor = .yellow

let stackView = UIStackView()
stackView.axis = .vertical

let greenView = UIView()
greenView.backgroundColor = .green

let redView = UIView()
redView.backgroundColor = .red

let bottomTrailingView = UIView()
bottomTrailingView.backgroundColor = .blue

// Hook helper
view.addSubviews(yellowView, stackView, bottomTrailingView)
stackView.addArrangedSubviews(greenView, redView)

// Hook all side
yellowView.hook.all(to: view, useSafeArea: false)

// Hook top, leading, trailing
stackView.hook
    .top(equalTo: yellowView.safeAreaLayoutGuide.topAnchor, constant: 20)
    .leading(equalTo: yellowView.leadingAnchor)
    .trailing(equalTo: yellowView.trailingAnchor)

// Hook trailing, bottom, width, height
bottomTrailingView.hook
    .trailing(equalTo: view.trailingAnchor)
    .bottom(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    .width(equalTo: view.widthAnchor, multiplier: 0.5)
    .height(greaterThanOrEqualTo: redView.heightAnchor)

// Hook height
greenView.hook.height(equalToConstant: 200)

// Hook height
redView.hook.height(equalTo: greenView.heightAnchor)
```

<img src="/Assets/Screen Shot.png" width="400">

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Hook is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Hook'
```

## Author

lyfeoncloudnine, lyfeoncloudnine@gmail.com

## License

Hook is available under the MIT license. See the LICENSE file for more info.
