//
//  ProfileVC.swift
//  ClickJobs 1.0
//
//  Created by user1 on 25/03/22.
//

import UIKit
import SSNeumorphicView

class ProfileVC: UIViewController {
    @IBOutlet weak var continerView: UIView!
    @IBOutlet var outerViews: [SSNeumorphicView]!
    
    @IBOutlet weak var savedCountLbl: UILabel!
    @IBOutlet weak var vacanciesCountlbl: UILabel!
   
    @IBOutlet var lebels: [UILabel]!
    
    @IBOutlet weak var editBtn: UIButton!
    
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    
    @IBOutlet weak var fullNameView: SSNeumorphicView!
    @IBOutlet weak var numberView: SSNeumorphicView!
    @IBOutlet weak var emailView: SSNeumorphicView!
    @IBOutlet weak var locationView: SSNeumorphicView!
        
    @IBOutlet weak var vacanView: SSNeumorphicView!
    @IBOutlet weak var savedView: SSNeumorphicView!
    
    @IBOutlet var btnViews: [SSNeumorphicView]!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationSetup()
        backButtonSetup()
        viewsSetup()
        lblsSetup()
       
    }

    func lblsSetup() {
        for i in lebels {
            i.textColor = .lblBlack
        }
        editBtn.tintColor = .btnRed
    }
    
    func viewsSetup() {
        for i in outerViews {
            i.viewDepthType = .outerShadow
            i.viewNeumorphicCornerRadius = 16
            i.viewNeumorphicShadowRadius = 0
            i.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
            i.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        }
        for i in btnViews {
            i.viewDepthType = .outerShadow
            i.viewNeumorphicCornerRadius = 13
            i.viewNeumorphicShadowRadius = 0
            i.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
            i.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        }
        
        continerView.backgroundColor = .defaultGray
    }
    
    func backButtonSetup() {
        navigationItem.backButtonTitle = "Back"
        self.navigationController?.navigationBar.tintColor = .btnRed
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func navigationSetup() {
        title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        self.view.backgroundColor = .defaultGray
        navigationController?.navigationBar.barTintColor =  .defaultGray
        _ = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(settingBtnTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingBtnTapped))
    }
    
    @IBAction func editBtnTapped(_ sender: Any) {
        let vc = EditVC.init(nibName: "EditVC", bundle: nil)
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func settingBtnTapped() {
        let vc = SettingsVC.init(nibName: "SettingsVC", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func vacanciesBtntapped(_ sender: Any) {
        let vc = VacanciesVC.init(nibName: "VacanciesVC", bundle: nil)
        vc.searchController.searchBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func savedBtnTapepd(_ sender: Any) {
        
    }
}

//MARK: calling Protocol
extension ProfileVC: EditVCDelegate {
    func editInformation(newInfo: PersonInfos) {
        fullNameLbl.text = newInfo.fullname
        locationLbl.text = newInfo.city
        emailLbl.text = newInfo.email
        numberLbl.text = newInfo.phone
    }
}



