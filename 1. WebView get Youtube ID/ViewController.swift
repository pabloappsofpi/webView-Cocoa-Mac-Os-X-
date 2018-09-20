//
//  ViewController.swift
//  1. WebView get Youtube ID
//
//  Created by Pablo Fabre on 9/20/18.
//  Copyright © 2018 Pablo Fabre. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet weak var urlTextField: NSTextField!
    @IBAction func saveUrl(_ sender: Any) {
       let theUrl = webView.url!
      //convert to string
        let url = theUrl.absoluteString

        self.urlTextField.stringValue = url
    }
    @IBOutlet weak var webView: WKWebView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    
    
}






