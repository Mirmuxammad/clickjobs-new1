//
//  VacanciesTVC.swift
//  ClickJobs - Page 2
//
//  Created by MIrmuxammad on 25/03/22.
//

import UIKit
import SSNeumorphicView

class VacanciesTVC: UITableViewCell {

    @IBOutlet weak var cellView: SSNeumorphicView! {
        didSet {
            cellView.backgroundColor = UIColor(named: "Solid")
            cellView.viewDepthType = .outerShadow
        }
    }
    @IBOutlet weak var sphereLbl: UILabel!
    @IBOutlet weak var vacanciesImgContView: UIView!
    @IBOutlet weak var placesWorkLbl: UILabel!
    @IBOutlet weak var wagesLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var firstSkilsLbl: UILabel!
    @IBOutlet weak var secondSkilsLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellLabelColors(color: UIColor(named: "LblColor") ?? .black)
    }
    
    func cellLabelColors (color: UIColor) {
        placesWorkLbl.textColor = color
        wagesLbl.textColor = color
        locationLbl.textColor = color
        firstSkilsLbl.textColor = color
        secondSkilsLbl.textColor = color
    }
    
}
