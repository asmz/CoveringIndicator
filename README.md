# CoveringIndicator

[![Version](https://img.shields.io/cocoapods/v/CoveringIndicator.svg?style=flat)](https://cocoapods.org/pods/CoveringIndicator)
[![License](https://img.shields.io/cocoapods/l/CoveringIndicator.svg?style=flat)](https://cocoapods.org/pods/CoveringIndicator)
[![Platform](https://img.shields.io/cocoapods/p/CoveringIndicator.svg?style=flat)](https://cocoapods.org/pods/CoveringIndicator)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- iOS 11.0 or later
- Swift 5 or later
- Xcode 10.2 or later

## Installation

CoveringIndicator is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CoveringIndicator'
```

## Usage

Firstly, import `CoveringIndicator`.

```swift
import CoveringIndicator
```

Let your UIViewController conforming with the `CoveringIndicatorShowable` protocol.

```swift
class ViewController: UIViewController, CoveringIndicatorShowable {
    ...
}
```

Show indicator covering the screen.

```swift
showCoveringIndicator()
```

Hide indicator covering the screen.

```swift
hideCoveringIndicator()
```


## Author

Akira Shimizu / asmz

## License

CoveringIndicator is available under the MIT license. See the LICENSE file for more info.
