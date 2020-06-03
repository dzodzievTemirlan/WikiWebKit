//
//  WebKitViewController.swift
//  WikiWebKIT
//
//  Created by Temirlan Dzodziev on 01.06.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit
import WebKit


class WebKitViewController: UIViewController {
    
    var textFieldVC: String?
    
    override func viewDidLoad() {
        
        guard let urlString = textFieldVC else{return}
        
        sendLink(link: urlString)
        
    }
    
    @IBOutlet weak var webKit: WKWebView!
    

    func sendLink(link: String){

        guard let encodeLink = link.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return }
            guard let myURL = URL(string: "https://ru.wikipedia.org/wiki/\(encodeLink)") else { return }
            let myRequest = URLRequest(url: myURL)
        print(myRequest)
            webKit.load(myRequest)

    }
    
    
}

