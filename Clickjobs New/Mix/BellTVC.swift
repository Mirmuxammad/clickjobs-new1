//
//  BellTVC.swift
//  Clickjobs New
//
//  Created by user1 on 13/04/22.
//

import UIKit
import SSNeumorphicView

struct BellNotification {
    var fullname : String
    var link : String
    var aboutInfo: String
}

class BellTVC: UITableViewCell {

    @IBOutlet weak var conteinerView: SSNeumorphicView!
    
    @IBOutlet weak var aboutLbl: UILabel!
    @IBOutlet weak var linkLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewSetup()
    }

    func updateCell(infos: BellNotification) {
        aboutLbl.text = infos.aboutInfo
        nameLbl.text = infos.fullname
        linkLbl.text = infos.link
    }
    
    
    func viewSetup() {
        conteinerView.viewDepthType = .outerShadow
        conteinerView.viewNeumorphicCornerRadius = 10
        conteinerView.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
        conteinerView.viewNeumorphicShadowRadius = 0
        conteinerView.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        }
    
}
