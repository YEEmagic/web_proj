//
//  ViewController.swift
//  Web_JSH
//
//  Created by 232-09 on 2024/04/03.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet var txtUrl: UITextField!
    
    @IBOutlet var myWebView: WKWebView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        if !flag {
            strUrl = "http://" + strUrl
        }
        return strUrl
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadWebPage("https://www.mk.co.kr/")
    }
    
    @IBAction func btnGotoUrl(_ sender: UIButton) {
        let myUrl = checkUrl(txtUrl.text!)
        txtUrl.text = ""
        loadWebPage(myUrl)
        
    }
    
    @IBAction func btnGoSite1(_ sender: UIButton) {
        loadWebPage("https://www.chosun.com/")
    }
    
    @IBAction func btnGoSite2(_ sender: UIButton) {
        loadWebPage("https://www.hani.co.kr/")
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
        myWebView.goBack()
        // https://icons8.com/icon/39944/left-arrow
        // https://www.google.com/search?q=ios+%EC%8B%9C%EC%8A%A4%ED%85%9C+%EC%95%84%EC%9D%B4%EC%BD%98+%EC%83%89%EC%83%81+%EC%9C%A0%EB%8B%88%EC%BD%94%EB%93%9C&sca_esv=a22b124cb26f8e73&ei=jQtpZor-HYLCvr0PkpSngAc&udm=&ved=0ahUKEwjK-J7khdWGAxUCoa8BHRLKCXAQ4dUDCBA&uact=5&oq=ios+%EC%8B%9C%EC%8A%A4%ED%85%9C+%EC%95%84%EC%9D%B4%EC%BD%98+%EC%83%89%EC%83%81+%EC%9C%A0%EB%8B%88%EC%BD%94%EB%93%9C&gs_lp=Egxnd3Mtd2l6LXNlcnAiK2lvcyDsi5zsiqTthZwg7JWE7J207L2YIOyDieyDgSDsnKDri4jsvZTrk5wyCBAhGKABGMMESPYkUMcJWP0icAV4AZABBJgB8gGgAfoSqgEGMS4xNS4yuAEDyAEA-AEBmAIKoAKWBcICChAAGLADGNYEGEfCAgwQIRigARjDBBgKGCrCAgoQIRigARjDBBgKmAMAiAYBkAYKkgcDNS41oAfFRQ&sclient=gws-wiz-serp#vhid=CGs9W8wRRze_FM&vssid=l
    }
    
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
    
    
    
    
}

