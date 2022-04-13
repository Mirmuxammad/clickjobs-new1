//
//  JobCategoryTVC.swift
//  Clickjobs New
//
//  Created by user1 on 07/04/22.
//



import UIKit
import SSNeumorphicView

class JobCategoryTVC: UITableViewCell {

    @IBOutlet weak var jobLbl: UILabel!
    @IBOutlet weak var conteinrView: SSNeumorphicView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        viewSetup()
        
    }
    
    func updateCell(job: JobCategory) {
        jobLbl.text = job.jobType
    }

    func viewSetup() {
        conteinrView.viewDepthType = .outerShadow
        conteinrView.viewNeumorphicCornerRadius = 13
        conteinrView.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
        conteinrView.viewNeumorphicShadowRadius = 0
        conteinrView.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        jobLbl.textColor = .lblBlack
        }
    
    
}
