//
//  SiginVC.swift
//  Click_Jobs_app
//
//  Created by Macbook Air on 26/03/22.
//

import UIKit

class SignUpVC: UIViewController {
    

    
    @IBOutlet weak var usernameTxtFld: GeneralTextField!
    
    @IBOutlet weak var passwordTxtFld: GeneralTextField!
    
    
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
