//
//  ProfileVC.swift
//  ClickJobs 1.0
//
//  Created by user1 on 25/03/22.
//

import UIKit
import SSNeumorphicView

class AppColor {
    static var shared: AppColor = AppColor()
    
    
    var clickRed = #colorLiteral(red: 0.9435839057, green: 0.1135162041, blue: 0.1085523143, alpha: 1)
    var clickBlack = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    var clickGray = #colorLiteral(red: 0.9205921292, green: 0.9257189631, blue: 0.942661047, alpha: 1)
}


class ProfileVC: UIViewController {
   
    @IBOutlet weak var continerView: UIView!
    
    @IBOutlet var outerViews: [SSNeumorphicView]!
    @IBOutlet var lebels: [UILabel]!
    
    @IBOutlet weak var editBtn: UIButton!
    
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var companyNameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    
    @IBOutlet weak var fullNameView: SSNeumorphicView!
    @IBOutlet weak var companyNameView: SSNeumorphicView!
    @IBOutlet weak var emailView: SSNeumorphicView!
    @IBOutlet weak var locationView: SSNeumorphicView!
    
    @IBOutlet weak var hiiddinStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
       
        navigationSetup()
        backButtonSetup()
        viewsSetup()
        lblsSetup()
    }

    func lblsSetup() {
        for i in lebels {
            i.textColor = UIColor(named: "lblColor")
        }
        editBtn.tintColor = AppColor.shared.clickRed
    }
    
    func viewsSetup() {
        for i in outerViews {
            i.viewDepthType = .outerShadow
            i.viewNeumorphicCornerRadius = 16
            i.viewNeumorphicShadowRadius = 0
            i.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
            i.viewNeumorphicMainColor = UIColor(named: "solid")?.cgColor
        }
        continerView.backgroundColor = UIColor(named: "solid")
    }
    
    func backButtonSetup() {
        navigationItem.backButtonTitle = "Back"
        self.navigationController?.navigationBar.tintColor = AppColor.shared.clickRed
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
//        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func navigationSetup() {
        title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        self.view.backgroundColor = UIColor(named: "solid")
        navigationController?.navigationBar.barTintColor =  UIColor(named: "solid")
        _ = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(settingBtnTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingBtnTapped))
    }
    
    @IBAction func editBtnTapped(_ sender: Any) {
        let vc = EditVC.init(nibName: "EditVC", bundle: nil)
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func settingBtnTapped() {
        
        //    print("right bar button action")
    }
}

//MARK: calling Protocol
extension ProfileVC: EditVCDelegate {
    func editInformation(newInfo: PersonInfos) {
        fullNameLbl.text = newInfo.fullname
        locationLbl.text = newInfo.city
        emailLbl.text = newInfo.email
        companyNameLbl.text = newInfo.compyany
    }
}

