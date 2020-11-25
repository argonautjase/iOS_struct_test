//
//  Service.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import Foundation

struct Service {
    static func fetchJobData(_ completion: @escaping (Result<[UserModel], Error>) -> ()) {
        completion(.success(userData))
    }
}
    
let userData = [
    UserModel(firstname: "Jane", lastname: "Doe", jobCategory: "doctor", placeOfWork: "At a Hospital", jobDescription: "I am a general Dcotor who treats all promblems")
]

