//
//  SiginVC.swift
//  Click_Jobs_app
//
//  Created by Macbook Air on 26/03/22.
//

import UIKit
import SSNeumorphicView

class SiginVC: UIViewController {
    
    @IBOutlet var backViews: [SSNeumorphicView]! {
        didSet {
            for i in backViews {
                i.viewDepthType = .innerShadow
                i.viewNeumorphicCornerRadius = 13
            }
        }
    }
    
    @IBOutlet weak var usernameTxtFld: UITextField!
    
    @IBOutlet weak var passwordTxtFld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }

    @IBAction func gestureTap(_ sender: Any) {
        usernameTxtFld.resignFirstResponder()
        passwordTxtFld.resignFirstResponder()
    }
    
    func setNavBar() {
        navigationController?.navigationBar.tintColor = .clear
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9176470637, green: 0.9176470637, blue: 0.9176470637, alpha: 1)
    }
    
}
