//
//  VacanciesDesVC.swift
//  ClickJobs - Page 2
//
//  Created by MIrmuxammad on 25/03/22.
//

import UIKit
import WebKit

class VacanciesDesVC: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    
    var urlString: String = "https://google.com"
    var category: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBarVacansi()
        self.view.backgroundColor = .defaultGray
        
        let req = URLRequest(url: URL(string: self.urlString)!)
        self.webView.load(req)
        self.webView.navigationDelegate = self
        self.title = category
        self.webView.isOpaque = false
        self.webView.backgroundColor = .defaultGray
        
    }
    
    
    @IBAction func saveForLaterPressed(_ sender: Any) {
    }
    
    @IBAction func contactPressed(_ sender: Any) {
    }
    
    

}



extension VacanciesDesVC: WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        Loader.start()
    }
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        Loader.stop()
    }
}



//MARK: -UINavigationControllerBar methodos-
extension VacanciesDesVC {
    func setNavBarVacansi() {
        view.backgroundColor = .defaultGray
        title = "Vacancies"
        navigationController?.navigationBar.tintColor = .btnRed
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.backgroundColor = .defaultGray
        navigationController?.view.backgroundColor = .defaultGray
        
    }
}
