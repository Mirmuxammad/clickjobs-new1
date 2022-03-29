//
//  Employee.swift
//  Clickjobs
//
//  Created by Mustafo Asqarov on 21/03/2022.
//

import Foundation


struct User {
    
    var id: String
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var tgUsername: String
    var jobTitle: String
    var isSearchingJob: Bool
    var resumeUrl: String
    var savedVacancies: [String]
    
    var login: String
    var password: String
    
    var companyID: String
    var isEmployee: Bool

    
    func getDictionary() -> [String:Any] {
        return [
            "companyID":companyID,
            "email":email,
            "firstName":firstName,
            "isEmployee":isEmployee,
            "isSearchingJob":isSearchingJob,
            "jobTitle":jobTitle,
            "lastName":lastName,
            "login":login,
            "password":password,
            "phone":phone,
            "resumeURL":resumeUrl,
            "savedVacancies": savedVacancies,
            "tgUsername":tgUsername
                    
        ]
    }
        
}
