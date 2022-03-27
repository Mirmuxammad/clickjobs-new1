//
//  VcancyVC.swift
//  Clickjobs
//
//  Created by Ilhomjon Yulbarskhanov on 26/03/22.
//

import UIKit
import SSNeumorphicView
class VcancyTVC: UITableViewCell {
    @IBOutlet weak var jobtitle: UILabel!
    @IBOutlet weak var companyname: UILabel!
    @IBOutlet weak var salary: UILabel!
    @IBOutlet weak var worktyoe: UILabel!
    @IBOutlet weak var requirement1: UILabel!
    @IBOutlet weak var requirement2: UILabel!
    @IBOutlet weak var compLogo: UIImageView!
    
    @IBOutlet var views: SSNeumorphicView!
    @IBOutlet weak var jobtype2: SSNeumorphicView!
    @IBOutlet weak var jobtype1: SSNeumorphicView!
    @IBOutlet weak var generalView: SSNeumorphicView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
     set()
        generalView.viewDepthType = .outerShadow
        views.viewDepthType = .innerShadow
       
    }
    
    
    
    
    
    
    
}





extension VcancyVC {
    func set() {
        jobtype2.viewDepthType = .innerShadow
        jobtype1.viewDepthType = .innerShadow
    }
}
