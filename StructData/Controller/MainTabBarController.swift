//
//  MainTabBarController.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    var data: [UserModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        print("Data after fetch in viewdidload in MainTabBarController \(data[0].firstname)")
        configureViewControllers()
    }
    
    fileprivate func fetchData() {
        Service.fetchJobData { (result) in
            switch result {
            case .success(let data):
                self.data = data
                print("Initial Fetch of Data in MainTabBarController \(data[0].firstname)")
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
    

    func configureViewControllers() {
        let home = HomeController()
        let nav1 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: home)
     
        
        let layout = UICollectionViewFlowLayout()
        let jobmenu = JobRoleMenuViewController(collectionViewLayout: layout)
        let nav2 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: jobmenu)
        
        let jobpicker = JobDetailsView()
        let nav3 = templateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: jobpicker)
        
        // create the array of controllers to be used in the Tab Bar
        viewControllers = [nav1, nav2, nav3]
    }
    
    func templateNavigationController(image: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        return nav
    }
}

