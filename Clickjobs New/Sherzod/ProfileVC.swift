//
//  ProfileVC.swift
//  ClickJobs_NewProject
//
//  Created by Sherzod on 25/03/22.
//

import UIKit

class ProfileVC: UIViewController {
    
    @IBOutlet var btn1: UIButton!
    
    @IBOutlet var jjj: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let favorite = UIAction(title: "Favorite",
                                image: UIImage(systemName: "heart.fill")) { _ in
            print("Hello")
        }
        let share = UIAction(title: "Share",
                             image: UIImage(systemName: "person")) { _ in
            print("Hello")
        }
        
        
        btn1.showsMenuAsPrimaryAction = true
        btn1.menu = UIMenu(title: "vhjghjhj", children: [favorite,share])
        
    }
    
   
    
}


