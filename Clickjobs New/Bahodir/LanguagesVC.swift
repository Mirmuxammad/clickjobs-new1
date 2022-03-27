//
//  LanguagesVC.swift
//  click-jobs_PersonalWork
//
//  Created by baxa on 26/03/22.
//

import UIKit
import SSNeumorphicView
import SoftButton

class LanguagesVC: UIViewController {
//    EBECF0
    @IBOutlet var languagesBtns: [SSNeumorphicButton]!{
        didSet{
            for i in languagesBtns.enumerated(){
                i.element.btnDepthType = .outerShadow
                i.element.btnNeumorphicShadowRadius = 0
                i.element.btnNeumorphicShadowOffset = .init(width: 3, height: 2)
                i.element.btnNeumorphicCornerRadius = 13
//                i.element.btnNeumorphicLayerMainColor = UIColor(named: "solid")!.cgColor
                if i.offset == 0{
                    i.element.setImage(UIImage(systemName: "checkmark"), for: .normal)
                    i.element.btnDepthType = .innerShadow
                    i.element.tintColor = UIColor("ABABAB")
                }
                else{
                    i.element.setImage(UIImage(systemName: "checkmark"), for: .normal)
                    i.element.tintColor = .clear
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Languages"
        self.view.backgroundColor = UIColor(named: "solid")
    }
    
    
    @IBAction func langsTapped(_ sender: UIButton) {
        for i in languagesBtns.enumerated(){
            if i.offset == sender.tag{
                i.element.setImage(UIImage(systemName: "checkmark"), for: .normal)
                i.element.tintColor = UIColor("ABABAB")
                i.element.isSelected = false
                i.element.btnDepthType = .innerShadow
            }
            else{
                i.element.setImage(UIImage(systemName: "checkmark"), for: .normal)
                i.element.tintColor = .clear
                i.element.btnDepthType = .outerShadow
            }
        }
    }
    

    

}
