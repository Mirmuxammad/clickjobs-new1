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
    @IBOutlet weak var workAddressField: GeneralTextField!
    @IBOutlet weak var urlField: GeneralTextField!

    
    @IBOutlet weak var jobCategoryBtn: SSNeumorphicButton!
    @IBOutlet weak var jobSubCategoryBtn: SSNeumorphicButton!



    private var lastCategory: String = ""
    private var lastSubcategory: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        
    }
    
    
    
    @IBAction func categoryPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Choose a category", message: nil, preferredStyle: .actionSheet)
        let remote = UIAlertAction(title: "Frontend", style: .default) { _ in
            self.lastCategory = "Frontend"
            self.jobCategoryBtn.setTitle(self.lastCategory, for: .normal)
        }
        
        let offline = UIAlertAction(title: "Backend", style: .default) { _ in
            self.lastCategory = "Backend"
            self.jobCategoryBtn.setTitle(self.lastCategory, for: .normal)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { _ in
        }
        
        alert.addAction(remote)
        alert.addAction(offline)
        alert.addAction(cancel)
        self.present(alert, animated: true)
    }
    
    
    @IBAction func subCategoryPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Choose subcategory", message: nil, preferredStyle: .actionSheet)
        let remote = UIAlertAction(title: "Vue.js", style: .default) { _ in
            self.lastSubcategory = "http://assets.stickpng.com/thumbs/58482acecef1014c0b5e4a1e.png"
            self.jobSubCategoryBtn.setTitle(self.lastSubcategory, for: .normal)
        }
        
        let offline = UIAlertAction(title: "Django", style: .default) { _ in
            self.lastSubcategory = "https://framagit.org/uploads/-/system/project/avatar/28062/django.png"
            self.jobSubCategoryBtn.setTitle(self.lastSubcategory, for: .normal)
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
            let newV = Vacancy(userId: token, infoUrl: urlField.text!, salary: "💸 \(self.salaryField.text!)", title: self.titleField.text!, workAddress: "📍 \(self.workAddressField.text!)", category: self.lastCategory, subcategory: self.lastSubcategory, companyName: "🏢 \(self.companyNameField.text!)")
            Fire.shared.addVacancy(vac: newV) { done in
                
            }

        } else {
            //TODO: - LOGIN PAGE GA OTVORISH KERAK.
        }
        
    }
    
    

}
