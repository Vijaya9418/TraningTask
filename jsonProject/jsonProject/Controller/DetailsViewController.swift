//
//  ViewController.swift
//  jsonProject
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit
import WebKit

class DetailsViewController: UIViewController,WKUIDelegate {
    var details:Hits?
    
    @IBOutlet weak var webView: WKWebView!
    
    
    let configuration = WKWebViewConfiguration()
    
    override func loadView() {
        
           configuration.mediaTypesRequiringUserActionForPlayback = []
        configuration.allowsInlineMediaPlayback = true
            webView = WKWebView(frame: .zero, configuration: configuration)
            webView.uiDelegate = self
           view = webView
   
        }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = (details?.url)!
        
        let myURL = URL(string:data)
           let myRequest = URLRequest(url: myURL!)
        DispatchQueue.main.async {
            self.webView.load(myRequest)
          
        }
         
        }
    }

