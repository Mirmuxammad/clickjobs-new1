//
//  JobExpertise.swift
//  ClickJobs
//
//  Created by Humoyun Esonaliyev on 25/03/22.
//

import UIKit
import SSNeumorphicView


class JobExpertise: UIViewController {
    
    

    @IBOutlet weak var vueJs: SSNeumorphicView!
    @IBOutlet weak var html: SSNeumorphicView!
    @IBOutlet weak var java: SSNeumorphicView!
    @IBOutlet weak var php: SSNeumorphicView!
    @IBOutlet weak var python: SSNeumorphicView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.8980392157, blue: 0.8980392157, alpha: 1)

      
        
        
        
        vueJs.viewNeumorphicCornerRadius = 13
        vueJs.viewDepthType = .outerShadow
        html.viewNeumorphicCornerRadius = 13
        html.viewDepthType = .outerShadow
        python.viewNeumorphicCornerRadius = 13
        python.viewDepthType = .outerShadow
        php.viewNeumorphicCornerRadius = 13
        php.viewDepthType = .outerShadow
        java.viewNeumorphicCornerRadius = 13
        java.viewDepthType = .outerShadow
    }
    @IBAction func vueJsTapped(_ sender: Any) {
    }
    @IBAction func htmlTapped(_ sender: Any) {
    }
    @IBAction func pythonTappedTapped(_ sender: Any) {
    }
    @IBAction func phpTapped(_ sender: Any) {
    }
    @IBAction func javaTapped(_ sender: Any) {
    }
    @IBAction func backTapped(_ sender: Any) {
        let vc = JobCatgory(nibName: "JobCatgory", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

