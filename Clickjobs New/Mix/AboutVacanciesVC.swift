//
//  AboutVacanciesVC.swift
//  Clickjobs New
//
//  Created by user1 on 07/04/22.
//

import UIKit
import SSNeumorphicView
class AboutVacanciesVC: UIViewController {

    @IBOutlet weak var conteinerView: UIView!
    @IBOutlet var views: [SSNeumorphicView]!
    override func viewDidLoad() {
        super.viewDidLoad()

       viewsSetup()
    }

    

    func viewsSetup() {
        for i in views {
            i.viewDepthType = .outerShadow
            i.viewNeumorphicCornerRadius = 16
            i.viewNeumorphicShadowRadius = 0
            i.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
            i.viewNeumorphicMainColor = UIColor(named: "defaultGray")?.cgColor
        }
        
        self.view.backgroundColor = .defaultGray
    }

    @IBAction func deleteBtnTapped(_ sender: Any) {
        alerVcSetup()
    }
}

//MARK: Aler vc Setup
extension AboutVacanciesVC {
    func alerVcSetup() {
        
        let alert = UIAlertController(title: "Delete?", message: "Are you sure to delete your vacancy forever?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Log out", style: .destructive, handler: { (_) in
            self.navigationController?.popToRootViewController(animated: true)
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            self.dismiss(animated: true, completion: nil)
        }))

        self.present(alert, animated: true, completion: {

            })
    }
}
