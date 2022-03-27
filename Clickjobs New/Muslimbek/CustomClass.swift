//
//  CustomClass.swift
//  ClickJobs
//
//  Created by Macbook on 25/03/22.
//

import Foundation
import UIKit


// MARK: - get background color


extension UIColor {
    
    static var clickGray: UIColor = UIColor().hexStringToUIColor(hex: "E5E5E5")
    
    func hexStringToUIColor(hex: String) -> UIColor {
        
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgpValue: UInt64 = 0
        
        Scanner(string: cString).scanHexInt64(&rgpValue)
        
        return UIColor (
            
            red: CGFloat((rgpValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgpValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgpValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}






