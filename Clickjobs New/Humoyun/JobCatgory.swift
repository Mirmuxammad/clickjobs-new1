//
//  JobCatgory.swift
//  ClickJobs
//
//  Created by Humoyun Esonaliyev on 25/03/22.
//

import UIKit
import SSNeumorphicView

class JobCatgory: UIViewController {
  
    
    @IBOutlet  var btnlar: [SSNeumorphicButton]!{
        didSet{
            for i in btnlar{
                i.btnDepthType = .outerShadow
                i.btnNeumorphicCornerRadius = 13
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)
    }
    @IBAction func backTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func frontedTapped(_ sender: Any) {
    }
    @IBAction func backendTapped(_ sender: Any) {
    }
    @IBAction func fullstackTapped(_ sender: Any) {
    }
    @IBAction func uxDesignTapped(_ sender: Any) {
    }
    @IBAction func uiDesignTapped(_ sender: Any) {
    }
    @IBAction func uiuxDesigTapped(_ sender: Any) {
    }
    @IBAction func gameTapped(_ sender: Any) {
    }
    @IBAction func cyberTapped(_ sender: Any) {
    }
    @IBAction func databaseTapped(_ sender: Any) {
    }
    
    
    
}


