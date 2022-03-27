//
//  ProfileVC.swift
//  Clickjobs
//
//  Created by Ilhomjon Yulbarskhanov on 25/03/22.
//

import UIKit
import SoftUIView
import SoftButton
import SSNeumorphicView

class ProfileVC: UIViewController {
    //MARK: ---- Labels ----
    @IBOutlet weak var ismLbl: UILabel!
    var softView: UIView = UIView()
    
    @IBOutlet weak var compNameLbl: UILabel!
    @IBOutlet weak var email_Lbl: UILabel!
    
    @IBOutlet weak var locationLbl: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: ---- Views ----
    @IBOutlet weak var viewF: SSNeumorphicView!
    @IBOutlet weak var viewC: SSNeumorphicView!
    @IBOutlet weak var viewE: SSNeumorphicView!
    @IBOutlet weak var viewL: SSNeumorphicView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAll()
        setViews()

        navigationSetup()
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            navigationController?.navigationBar.prefersLargeTitles = true
        
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            navigationController?.navigationBar.prefersLargeTitles = false
        }
    

    
    @objc func settingBtnTapped() {
        
        }
    
    @IBAction func editPressed(_ sender: UIButton) {
       
    }
    func navigationSetup() {
            title = "Profile"
            navigationItem.largeTitleDisplayMode = .always
            self.view.backgroundColor = UIColor(named: "Color")
            navigationController?.navigationBar.barTintColor = UIColor(named: "solid")
            _ = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(settingBtnTapped))
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(settingBtnTapped))
        }
    func setViews() {
        viewF.viewDepthType = .outerShadow
        viewF.viewNeumorphicCornerRadius = 16
        viewC.viewDepthType = .outerShadow
        viewC.viewNeumorphicCornerRadius = 16
        viewE.viewDepthType = .outerShadow
        viewE.viewNeumorphicCornerRadius = 16
        viewL.viewDepthType = .outerShadow
        viewL.viewNeumorphicCornerRadius = 16
        
    }
    
}








extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VcancyTVC", for: indexPath) as! VcancyTVC
        return cell
    }
 
   
    func setAll() {
        self.tableView.backgroundColor = .clear
        tableView.register(UINib(nibName: "VcancyTVC", bundle: nil), forCellReuseIdentifier: "VcancyTVC")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

extension UIColor {
    static var Solid: UIColor = UIColor().hexStringToUIColor(hex: "E5E5E5")
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
