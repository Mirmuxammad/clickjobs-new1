//
//  PasswordVC.swift
//  click-jobs_PersonalWork
//
//  Created by baxa on 25/03/22.
//
import Foundation
import UIKit
import SSNeumorphicView

class PasswordVC: UIViewController {
//    E3E6EA
    @IBOutlet var pswrdTfs: [GeneralTextField]!{
        didSet{
            for i in pswrdTfs{
                i.enablePasswordToggle()
            }
        }
    }
    
    
    @IBOutlet var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "solid")
        title = "Password"
    }
}


