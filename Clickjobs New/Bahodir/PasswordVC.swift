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
    @IBOutlet var pswrdTfs: [SSBaseTextField]!{
        didSet{
            for i in pswrdTfs{
                i.txtDepthType = .innerShadow
                i.txtNeumorphicCornerRadius = 13
                i.txtNeumorphicShadowRadius = 0
                i.txtNeumorphicShadowOffset = .init(width: 3, height: 2)
                i.enablePasswordToggle()
                i.txtNeumorphicMainColor = UIColor(named: "solid")?.cgColor
//                i.txtNeumorphicMainColor = UIColor(red: 0.922, green: 0.925, blue: 0.941, alpha: 1).cgColor
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


