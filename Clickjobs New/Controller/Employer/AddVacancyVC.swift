//
//  AddVacancyVC.swift
//  Clickjobs New
//
//  Created by Mustafo Asqarov on 28/03/2022.
//

import UIKit
import SSNeumorphicView

class AddVacancyVC: UIViewController {
    
    @IBOutlet weak var titleField: GeneralTextField!
    @IBOutlet weak var companyNameField: GeneralTextField!
    @IBOutlet weak var salaryField: GeneralTextField!
    @IBOutlet weak var jobTagField: GeneralTextField!
    @IBOutlet weak var workAddressField: GeneralTextField!
    @IBOutlet weak var urlField: GeneralTextField!

    var lastCondition: String = "Type of job"
    
    @IBOutlet weak var typeOfJobBtn: SSNeumorphicButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.typeOfJobBtn.setTitle(self.lastCondition, for: .normal)
        
        
        
    }
    
    @IBAction func typeOfJobPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Working Condition", message: nil, preferredStyle: .actionSheet)
        let remote = UIAlertAction(title: "Remote", style: .default) { _ in
            self.lastCondition = "Remote"
            self.typeOfJobBtn.setTitle(self.lastCondition, for: .normal)
        }
        
        let offline = UIAlertAction(title: "Office", style: .default) { _ in
            self.lastCondition = "Office"
            self.typeOfJobBtn.setTitle(self.lastCondition, for: .normal)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { _ in
        }
        
        alert.addAction(remote)
        alert.addAction(offline)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    
    @IBAction func createBtnTappted(_ sender: Any) {
        if let token = Cache.share.getUserToken() {
            let newV = Vacancy(userId: token, infoUrl: urlField.text!, salary: salaryField.text!, title: titleField.text!, workAddress: workAddressField.text!, jobTypeId: self.lastCondition, jobTag: jobTagField.text!, companyName: companyNameField.text!)
            Fire.shared.addVacancy(vac: newV) { done in
                
            }

        }
        
    }
    
    

}
