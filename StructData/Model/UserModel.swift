//
//  User.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import Foundation

struct UserModel {
    var firstname: String
    var lastname: String
    var jobCategory: String
    var placeOfWork: String
    var jobDescription: String
    
//    var firstname = "First Name"
//    var lastname = "Last Name"
//    var jobCategory = "Doctor"
//    var placeOfWork = "Hospital"
//    var jobDescription = "I fix peoples health"

    init(firstname: String, lastname: String, jobCategory: String, placeOfWork: String, jobDescription: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.jobCategory = jobCategory
        self.placeOfWork = placeOfWork
        self.jobDescription = jobDescription
        
    }
    
}


