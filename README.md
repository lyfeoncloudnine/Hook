# Hook

[![Version](https://img.shields.io/cocoapods/v/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)
[![License](https://img.shields.io/cocoapods/l/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)
[![Platform](https://img.shields.io/cocoapods/p/Hook.svg?style=flat)](https://cocoapods.org/pods/Hook)

## Quick Guide

<img src="/Assets/Screen Shot.png" width="400">

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
yellowView.hook.all(to: view)

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

## Comparison

### NSLayoutConstraint

```swift
addSubview(aView)
aView.translatesAutoresizingMaskIntoConstraints = false

addSubview(bView)
bView.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    aView.topAnchor.constraint(equalTo: topAnchor),
    aView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
    aView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
    aView.heightAnchor.constraint(greaterThanOrEqualToConstant: 40),

    bView.topAnchor.constraint(equalTo: aView.bottomAnchor, constant: 10),
    bView.centerXAnchor.constraint(equalTo: aView.centerXAnchor),
    bView.widthAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 1.2),
    bView.heightAnchor.constraint(lessThanOrEqualTo: aView.heightAnchor)
])
```

### Hook

```swift
addSubviews(aView, bView)

aView.hook
    .top(to: topAnchor)
    .leading(to: leadingAnchor, constant: 20)
    .trailing(to: trailingAnchor, constant: -20)
    .height(greaterThanOrEqualConstant: 40)

bView.hook
    .top(to: aView.bottomAnchor, constant: 10)
    .centerX(to: aView.centerXAnchor)
    .width(to: aView.widthAnchor, multiplier: 1.2)
    .height(lessThanOrEqualTo: aView.heightAnchor)
```

You can reduce typing via `all(to:topConstant:leadingConstant:bottomConstant:trailingConstant:safeAreaSides)`.

```swift
bView.hook.all(to: self)
```

And you can easily set priority via `priority` parameter.

```swift
bView.hook.height(to: aView.height, priority: .defaultLow)
```

Also, you can easily access `NSLayoutConstraint` via `constraint(_:)`.

```swift
bView.hook.constraint(.height)?.isActive = false
bView.hook.height(equalToConstant: 300)
// OR
bView.hook.constraint(.height)?.constant = 20
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 11.0+

## Installation

### Cocoapods

Hook is available through [CocoaPods](https://cocoapods.org). 
To install it, simply add the following line to your `Podfile`:

```ruby
pod 'Hook'
```

### SPM

Hook is available also SPM. 
To install it, simply add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/lyfeoncloudnine/Hook.git", .upToNextMajor(from: "1.0.0"))
]
```

## Author

lyfeoncloudnine, lyfeoncloudnine@gmail.com

## License

Hook is available under the MIT license. See the LICENSE file for more info.
