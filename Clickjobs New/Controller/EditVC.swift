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
    
    @IBOutlet weak var fullnameTF: GeneralTextField!
    @IBOutlet weak var cityTF: GeneralTextField!
    @IBOutlet weak var companyTF: GeneralTextField!
    @IBOutlet weak var emailTF: GeneralTextField!
    @IBOutlet weak var phoneTF: GeneralTextField! {
        didSet {
            phoneTF.delegate = self
        }
    }
   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var saveBtn: UIButton!
    
    var delegate : EditVCDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
       otherSetups()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
   
    func otherSetups() {
         title = "Personal Data"
        self.view.backgroundColor = .defaultGray
        conteinerView.backgroundColor = .defaultGray
        saveBtn.backgroundColor = .btnRed
    }
    

    @IBAction func saveBtnTapped(_ sender: Any) {
        if fullnameTF.text?.isEmpty == false && cityTF.text?.isEmpty == false && phoneTF.text?.isEmpty == false &&  companyTF.text?.isEmpty == false {
            
            delegate?.editInformation(newInfo:
                                        PersonInfos(
                                                    fullname: fullnameTF.text!,
                                                    city: cityTF.text!,
                                                    compyany: companyTF.text!,
                                                    email: emailTF.text!,
                                                    phone: phoneTF.text!)
                                                    )
            navigationController?.popViewController(animated: true)
            
        }
    }
}

//MARK: - Text filed delegate & number formatter
extension EditVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return false }
        let newString = (text as NSString).replacingCharacters(in: range, with: string)
        textField.text = format(with: "+XXX (XX) XXX-XX-XX", phone: newString)
        return false
    }
    
    /// mask example: `+XXX (XX) XXX-XX-XX`
    func format(with mask: String, phone: String) -> String {
        let numbers = phone.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        var result = ""
        var index = numbers.startIndex // numbers iterator

        // iterate over the mask characters until the iterator of numbers ends
        for ch in mask where index < numbers.endIndex {
            if ch == "X" {
                // mask requires a number in this place, so take the next one
                result.append(numbers[index])

                // move numbers iterator to the next index
                index = numbers.index(after: index)

            } else {
                result.append(ch) // just append a mask character
            }
        }
        return result
    }
}



