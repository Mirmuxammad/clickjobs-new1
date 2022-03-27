//
//  VacancyVC.swift
//  ClickJobs_NewProject
//
//  Created by Sherzod on 25/03/22.
//

import UIKit


class VacancyVC: UIViewController {
    
    
    @IBOutlet var viewsss: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        viewsss.layer.cornerRadius = viewsss.layer.frame.height / 2
    }
}




