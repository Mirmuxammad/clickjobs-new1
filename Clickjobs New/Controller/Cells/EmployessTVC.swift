//
//  EmployessTVC.swift
//  ClickJobs_NewProject
//
//  Created by Sherzod on 25/03/22.
//

import UIKit
import SSNeumorphicView


class EmployessTVC: UITableViewCell {
    
    
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var proggTypeLbl: UILabel!
    @IBOutlet var experienceLbl: UILabel!
    @IBOutlet var locationLbl: UILabel!
    @IBOutlet var jobTypeFirst: UILabel!
    @IBOutlet var jobTypeSecond: UILabel!
    
    
    @IBOutlet var viewsUp: [SSNeumorphicView]!
    @IBOutlet var containerView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupShadow()
    }
    
    
    func setupShadow() {
        containerView.backgroundColor = .defaultGray
        for i in viewsUp {
            i.backgroundColor = .defaultGray
            i.viewDepthType = .innerShadow
        }
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOpacity = 0.5
        containerView.layer.shadowOffset = CGSize.zero
        containerView.layer.shadowRadius = 5
        
    }
    
    
    
    func update(data: Vacancy) {
        nameLbl.text = data.title
        locationLbl.text = data.workAddress
        jobTypeFirst.text = data.jobTag
        experienceLbl.text = data.salary
        jobTypeSecond.isHidden = true
    }
    
    
}

