//
//  JobCategoryModel.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

enum JobRoleCategory: Int, CaseIterable {
    
    case doctor
    case firefighter
    case police
    case retailer
    case student
    case teacher
    case astronaut
    
    static var numberOfItems: Int {
        return allCases.count
    }
    
    var image: UIImage {
        return UIImage(named: jobRoleImageString)!
    }
    
    var jobRoleType: String {
        switch self {
        case .doctor:
         return "Doctor"
        case .firefighter:
         return "Fire Fighter"
        case .police:
         return "Police Officer"
        case .retailer:
        return "Shop Keeper"
        case .student:
         return "Student"
        case .teacher:
         return "Teacher"
        case .astronaut:
         return "I'm Lucky!"
            
        }
    }
    
    var jobRoleImageString: String {
        switch self {
        case .doctor:
         return "doctor"
        case .firefighter:
         return "firefighter"
        case .police:
         return "police"
        case .retailer:
        return "retailer"
        case .student:
         return "student"
        case .teacher:
         return "teacher"
        case .astronaut:
         return "astronaut"
        }
    }
}

