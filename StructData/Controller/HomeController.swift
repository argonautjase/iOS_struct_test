//
//  HomeController.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

class HomeController: UIViewController {
    
//    var data: [UserModel] = []

//
    var userModel: UserModel! {
        didSet {
            print("didset")
            firstnameLabel.text = userModel.firstname
            lastnameLabel.text = userModel.lastname
            jobCategoryLabel.text = userModel.jobCategory
            placeOfWorkLabel.text = userModel.placeOfWork
            jobDescriptionLabel.text = userModel.jobDescription
            
            print("didset \(jobCategoryLabel.text)")

            
        }
    }
 
    
    private let firstnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "FirstName"
        return label
    }()
    
    private let lastnameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "LastName"
        return label
    }()
    
    private let jobCategoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Job Role"
        return label
    }()
    
    private let placeOfWorkLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Place of Work"
        return label
    }()
    
    private let jobDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.text = "Job Description"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
//        fetchData()
        configureUI()
    
    }
    
//    fileprivate func fetchData() {
//        Service.fetchJobData { (result) in
//            switch result {
//            case .success(let data):
//                self.data = data
//                print("Initial Fetch of Data in HomeController \(data[0].firstname)")
//                print("Initial Fetch of Data in HomeController \(data[0].lastname)")
//                print("Initial Fetch of Data in HomeController \(data[0].jobCategory)")
//                print("Initial Fetch of Data in HomeController \(data[0].placeOfWork)")
//                print("Initial Fetch of Data in HomeController \(data[0].jobDescription)")
//            case .failure(let err):
//                print(err.localizedDescription)
//            }
//        }
//    }
    
    func configureUI() {
        view.backgroundColor = .white
        
        let stack = UIStackView(arrangedSubviews: [firstnameLabel,
                                                   lastnameLabel,
                                                   jobCategoryLabel,
                                                   placeOfWorkLabel,
                                                   jobDescriptionLabel])
        stack.axis = .vertical
        stack.spacing = 2
        
        view.addSubview(stack)
        stack.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, right: view.safeAreaLayoutGuide.rightAnchor, paddingTop: 100, paddingLeft: 32, paddingRight: 32)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = .black
        navigationItem.title = "Home"
    }
    
}
