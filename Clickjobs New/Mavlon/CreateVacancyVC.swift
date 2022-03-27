//
//  CreateVacancyVC.swift
//  click-jobs
//
//  Created by Mavlon on 25/03/22.
//

import UIKit
import SSNeumorphicView

class CreateVacancyVC: UIViewController {
    
    @IBOutlet var softUIViews: [SSNeumorphicView]! {
        didSet {
            for view in softUIViews {
                view.viewNeumorphicCornerRadius = 13
            }
        }
    }
    
    @IBOutlet weak var neumorphicBtn: SSNeumorphicButton! {
        didSet {
            neumorphicBtn.isSelected = false
            neumorphicBtn.btnDepthType = .outerShadow
            neumorphicBtn.btnNeumorphicCornerRadius = 13
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Vacancy"
        

    }
    @IBAction func btnTapped(_ sender: Any) {
        print("ok")
    }
    
}

