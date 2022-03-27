//
//  EditVC.swift
//  ClickJobs 1.0
//
//  Created by user1 on 25/03/22.
//

import UIKit
import SSNeumorphicView

struct PersonInfos {
    var fullname : String
    var city: String
    var compyany: String
    var email: String?
    var phone: String
}

protocol EditVCDelegate {
    func editInformation(newInfo: PersonInfos)
}

class EditVC: UIViewController {
    
    
    @IBOutlet weak var conteinerView: UIView!
    @IBOutlet var daddyViewsTf: [SSNeumorphicView]!
    
    @IBOutlet weak var fullnameTF: UITextField!
    @IBOutlet weak var cityTF: UITextField!
    @IBOutlet weak var companyTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var saveBtn: UIButton!
    
    var delegate : EditVCDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()

       setupViews(cornerR: 13, bevel: 3)
       otherSetups()
//        navigationItem.largeTitleDispla   yMode = .never
    }
   
    func otherSetups() {
         title = "Personal Data"
        self.view.backgroundColor = #colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)
         conteinerView.backgroundColor = UIColor(named: "solid")
         saveBtn.backgroundColor = AppColor.shared.clickRed
    }
    
    func setupViews(cornerR: CGFloat, bevel : Int) {
        for i in daddyViewsTf {
            i.viewDepthType = .innerShadow
            i.viewNeumorphicCornerRadius = 13
            i.viewNeumorphicShadowRadius = 0
            i.viewNeumorphicShadowOffset = .init(width: 3, height: 3)
            i.viewNeumorphicMainColor = UIColor(named: "solid")?.cgColor
        }

    }
    @IBAction func saveBtnTapped(_ sender: Any) {
        if fullnameTF.text?.isEmpty == false && cityTF.text?.isEmpty == false && phoneTF.text?.isEmpty == false &&  companyTF.text?.isEmpty == false {
            delegate?.editInformation(newInfo: PersonInfos(fullname: fullnameTF.text!, city: cityTF.text!, compyany: companyTF.text!, email: emailTF.text!, phone: phoneTF.text!))
            navigationController?.popViewController(animated: true)
            
        }
    }
}


//MARK: - Keyboard handiling methods -
extension EditVC {
    func setupKeyboard(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
           
            let h = keyboardSize.height - (self.view.frame.maxY - saveBtn.frame.maxY)
            if h > 0 {
                self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
                
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if view.frame.maxY != 0 {
            self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
}
