//
//  LoginVC.swift
//  Click_Jobs_app
//
//  Created by Macbook Air on 26/03/22.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet var textFields: [GeneralTextField]!
    @IBOutlet weak var siginBtn: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var isEmployer: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
    }

    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    

}




//MARK: - KEYBOARD METHODS
extension SignInVC {
    
    func setNavigation() {
        
        navigationController?.navigationBar.tintColor = .clear
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9176470637, green: 0.9176470637, blue: 0.9176470637, alpha: 1)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
                
                NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        
        navigationController?.navigationBar.isHidden = true
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                
                let h = keyboardSize.height - (self.view.frame.maxY - siginBtn.frame.maxY)
                
                if h > 0 {
                    self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
                }
            }
        }
        
        @objc func keyboardWillHide(notification: NSNotification) {
            navigationController?.navigationBar.isHidden = false
            if self.view.frame.origin.y == 0 {
                self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50, right: 0)
            }
        }
    
    @IBAction func gestureTap(_ sender: UITapGestureRecognizer) {
        for i in textFields {
            i.resignFirstResponder()
        }
    }
}
