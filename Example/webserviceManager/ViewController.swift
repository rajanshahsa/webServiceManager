//
//  ViewController.swift
//  TestWS
//
//  Created by Rajan Shah on 10/04/18.
//  Copyright © 2018 Rajan Shah. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnGetDelegate_Clicked(_ sender: Any) {
        let ws = Webservice()
        ws.delegate = self
        ws.RequestForGet(strUrl:  "https://jsonplaceholder.typicode.com/posts", apiIdentifier: "get")
    }
    @IBAction func btnGet_Clicked(_ sender: Any) {
        let ws = Webservice()
        ws.RequestForGet(strUrl: "https://jsonplaceholder.typicode.com/posts", apiIdentifier: "", completionHandler: { (response) in
            print("response complition",response)
        }, errorCompletionHandler: { (error) in
            print("response complition error",error.localizedDescription)
        }) { (response) in
            print("response complition fail",response)
        }
    }
    
    @IBAction func btnPostDelegate_Clicked(_ sender: Any) {
        let ws = Webservice()
        let parameterDic = [
            "title": "foo",
            "body": "bar",
            "userId": 1
            ] as [String : Any]
        ws.delegate = self
       // ws.RequestForPost(url: "https://jsonplaceholder.typicode.com/posts", postData: parameterDic, apiIdentifier: "post")
    }
    
    @IBAction func btnPost_Clicked(_ sender: Any) {
        
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
    }
}

extension ViewController : WebserviceDelegate {
    func webserviceResponseInArraySuccess(response: [Any], apiIdentifier: String) {
        if apiIdentifier == "get"{
            print(response)
        }
        else if apiIdentifier == "post"{
            print(response)
        }
    }
    func webserviceResponseSuccess(response: [String : Any], apiIdentifier: String) {
        if apiIdentifier == "get"{
            print(response)
        } else if apiIdentifier == "post"{
            print(response)
        }
    }
    
    func webserviceResponseError(error: Error?, apiIdentifier: String) {
        print(error?.localizedDescription ?? "")
    }
    
    func webserviceResponseFail(response: [String : Any], apiIdentifier: String) {
        print(response)
    }
}

