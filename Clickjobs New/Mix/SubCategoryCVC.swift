//
//  SubCategoryCVC.swift
//  Clickjobs New
//
//  Created by user1 on 13/04/22.
//

import UIKit
import SSNeumorphicView
class SubCategoryCVC: UICollectionViewCell {

    @IBOutlet weak var conteinerView: SSNeumorphicView!
    
    @IBOutlet weak var technolgyLbl: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
      viewSetup()
    }
    
   
    func updateCell(tech: Techlogy) {
        technolgyLbl.text = tech.techname
        imageV.image = UIImage(named: tech.techimage)
        
    }
    
    func viewSetup() {
        conteinerView.viewDepthType = .outerShadow
        conteinerView.viewNeumorphicCornerRadius = 16
        conteinerView.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
        conteinerView.viewNeumorphicShadowRadius = 0
        conteinerView.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        }
    
}
