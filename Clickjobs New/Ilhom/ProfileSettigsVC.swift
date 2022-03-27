//
//  ProfileSettigsVC.swift
//  Clickjobs
//
//  Created by Ilhomjon Yulbarskhanov on 26/03/22.
//

import UIKit
import SoftButton
import SSNeumorphicView

class ProfileSettigsVC: UIViewController {
    
    @IBOutlet weak var passwordBtn: SSNeumorphicButton!
    
    @IBOutlet weak var notificationBtn: SSNeumorphicButton!
    
    @IBOutlet weak var languageBtn: SSNeumorphicButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAll()
    }
    
    func setAll() {
        passwordBtn.btnNeumorphicCornerRadius = 13
        passwordBtn.btnDepthType = .innerShadow
        notificationBtn.btnNeumorphicCornerRadius = 13
        notificationBtn.btnDepthType = .innerShadow
        languageBtn.btnNeumorphicCornerRadius = 13
        languageBtn.btnDepthType = .innerShadow
    }
    

}
