//
//  ProfileSettingVC.swift
//  ClickJobs
//
//  Created by Shotilla on 25/03/22.
//

import UIKit
import SSNeumorphicView

class ProfileSettingVC: UIViewController {
    
    @IBOutlet weak var changeBtn: SSNeumorphicButton! {
        didSet {
            changeBtn.btnDepthType = .outerShadow
            changeBtn.btnNeumorphicCornerRadius = 13

        }
    }
    @IBOutlet weak var notication: SSNeumorphicButton! {
        didSet {
            notication.btnDepthType = .outerShadow
            notication.btnNeumorphicCornerRadius = 13
        }
    }
    @IBOutlet weak var language: SSNeumorphicButton! {
        didSet {
            language.btnDepthType = .outerShadow
            language.btnNeumorphicCornerRadius = 13
        }
    }
    
    
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  #colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)
        
    }
    
    //MARK: - BackButtonPressed
    
    @IBAction func backPressed(_ sender: Any) {
        
    }
    
    //MARK: - LogOutButtonPressed
    
    @IBAction func logOutPressed(_ sender: Any) {
        
        let alertVC = UIAlertController(title: "Log out", message: "When you log out, your data will not be deleted.", preferredStyle: .alert)
        
        let logOutAction = UIAlertAction(title: "Log out", style: .destructive) { logOut in
            self.dismiss(animated: true)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { cancel in
            self.dismiss(animated: true)
        }
        alertVC.addAction(logOutAction)
        alertVC.addAction(cancelAction)
        
        self.present(alertVC, animated: true, completion: nil)
        
    }
    
    //MARK: - ChangePasswordButtonPressed
   
    @IBAction func changePressed(_ sender: Any) {
        let vc = ProfileSettingsPasswordVC(nibName: "ProfileSettingsPasswordVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    //MARK: - NotificationButtonPressed
    @IBAction func noticationPressed(_ sender: Any) {
    }
}

