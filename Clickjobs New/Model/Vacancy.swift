//
//  Vacancy.swift
//  Clickjobs New
//
//  Created by Mustafo Asqarov on 28/03/2022.
//

import Foundation

struct Vacancy {
    
    var userId: String
    var infoUrl: String
    var salary: String
    var title: String
//    var paragraphTitle: String
    var workAddress: String
//    var descriptionText: String
    var jobTypeId: String
    var jobTag: String
    var companyName: String
    
    
    
    func getDictionary() -> [String:String] {
        return [
            "userId":userId,
            "infoUrl":infoUrl,
            "salary":salary,
            "title":title,
            "workAddress":workAddress,
            "jobTypeId":jobTypeId,
            "jobTag":jobTag,
            "companyName":companyName
        ]
    }
    
    
    
}
