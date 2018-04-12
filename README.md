# webserviceManager

[![CI Status](http://img.shields.io/travis/rajanshahsa/webserviceManager.svg?style=flat)](https://travis-ci.org/rajanshahsa/webserviceManager)
[![Version](https://img.shields.io/cocoapods/v/webserviceManager.svg?style=flat)](http://cocoapods.org/pods/webserviceManager)
[![License](https://img.shields.io/cocoapods/l/webserviceManager.svg?style=flat)](http://cocoapods.org/pods/webserviceManager)
[![Platform](https://img.shields.io/cocoapods/p/webserviceManager.svg?style=flat)](http://cocoapods.org/pods/webserviceManager)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## How to use?

Get Method with Delegate:-
```Swift
let ws = Webservice()
ws.delegate = self
ws.RequestForGet(strUrl:  "https://jsonplaceholder.typicode.com/posts", apiIdentifier: "get")
```

Get Method with completion Handler:-
```Swift
let ws = Webservice()
ws.RequestForGet(strUrl: "https://jsonplaceholder.typicode.com/posts", apiIdentifier: "", completionHandler: { (response) in
    print("response complition",response)
}, errorCompletionHandler: { (error) in
    print("response complition error",error.localizedDescription)
}) { (response) in
    print("response complition fail",response)
}
```

Post Method with Delegate:-
```Swift
let ws = Webservice()
let parameterDic = [
  "title": "foo",
  "body": "bar",
  "userId": 1
      ] as [String : Any]
ws.delegate = self
ws.RequestForPost(url: "https://jsonplaceholder.typicode.com/posts", postData: parameterDic, apiIdentifier: "post")
```

Post Method with completion Handler:-
```Swift   
let ws = Webservice()
let parameterDic = [
    "title": "foo",
    "body": "bar",
    "userId": 1
    ] as [String : Any]
ws.RequestForPost(url: "https://jsonplaceholder.typicode.com/posts", postData: parameterDic, apiIdentifier: "", completionHandler: { (response) in
    print("response complition",response)
}, errorCompletionHandler: { (error) in
    print("response complition error",error.localizedDescription)
}) { (response) in
    print("response complition fail",response)
}
```

## Installation

webserviceManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'webserviceManager'
```

## Author

rajanshahsa, rajan.shah@solutionanalysts.com

## License

webserviceManager is available under the MIT license. See the LICENSE file for more info.
