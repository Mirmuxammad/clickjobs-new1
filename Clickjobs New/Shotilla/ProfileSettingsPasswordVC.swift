//
//  ProfileSettingsPasswordVC.swift
//  ClickJobs
//
//  Created by Shotilla on 25/03/22.
//

import UIKit
import SSNeumorphicView

class ProfileSettingsPasswordVC: UIViewController {

    @IBOutlet var backendViews: [SSNeumorphicView]! {
        didSet {
            for i in backendViews{
                i.viewDepthType = .innerShadow
                i.viewNeumorphicCornerRadius = 13
            }
        }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    
    @IBAction func backTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
    }
    
}
