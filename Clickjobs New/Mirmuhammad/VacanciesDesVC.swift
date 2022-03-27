//
//  VacanciesDesVC.swift
//  ClickJobs - Page 2
//
//  Created by MIrmuxammad on 25/03/22.
//

import UIKit

class VacanciesDesVC: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 85, right: 0)
        }
    }
    @IBOutlet weak var companyInfoLbl: UILabel!
    @IBOutlet weak var expectionsInfoLbl: UILabel!
    @IBOutlet weak var offerInfoLbl: UILabel!
    @IBOutlet weak var contactsInfoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavBarVacansi()
        
    }
    

}
//MARK: -UINavigationControllerBar methodos-
extension VacanciesDesVC {
    func setNavBarVacansi() {
        view.backgroundColor = UIColor(named: "Solid")
        title = "Vacancies"
        navigationController?.navigationBar.tintColor = UIColor(named: "redColor")
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Solid")
        navigationController?.view.backgroundColor = UIColor(named: "Solid")
        
    }
}
