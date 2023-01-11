//
//  WebViewController.swift
//  API-Project
//
//  Created by BKS-GGS on 11/01/23.
//


    import UIKit
    import WebKit

    class WebViewController: UIViewController,WKUIDelegate {
        var details:ProjectData?
        
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
        
        


