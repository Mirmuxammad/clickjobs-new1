//
//  PersonalDataVC.swift
//  ClickJobs
//
//  Created by Macbook on 25/03/22.
//

import UIKit
import SSNeumorphicView


class PersonalDataVC: UIViewController {

    
    @IBOutlet weak var nameView: SSNeumorphicView! {
        didSet{
        addNeumophicInView(vieww: nameView)
        }
    }
    
    @IBOutlet weak var jobView: SSNeumorphicView! {
        didSet{
        addNeumophicInView(vieww: jobView)
        }
    }
    
    
    @IBOutlet weak var cityView: SSNeumorphicView! {
        didSet{
        addNeumophicInView(vieww: cityView)
        }
    }
    
    @IBOutlet weak var numberView: SSNeumorphicView! {
        didSet{
        addNeumophicInView(vieww: numberView)
        }
    }
    
    @IBOutlet weak var usernameView: SSNeumorphicView! {
        didSet{
        addNeumophicInView(vieww: usernameView)
        }
    }
    
    @IBOutlet weak var emailView: SSNeumorphicView! {
        didSet{
            addNeumophicInView(vieww: emailView)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Personal Data"
        self.view.backgroundColor = .clickGray
    
    }

    func addNeumophicInView(vieww: SSNeumorphicView) {
        vieww.viewNeumorphicShadowOffset = .init(width: 2, height: 2)
        vieww.viewNeumorphicShadowRadius = 2
        vieww.viewNeumorphicCornerRadius = 12
        vieww.viewNeumorphicDarkShadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1996882357)
        vieww.viewNeumorphicLightShadowColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.8007548755)
        vieww.backgroundColor = .clickGray
        vieww.viewDepthType = .innerShadow
    }
    
    
    
}
