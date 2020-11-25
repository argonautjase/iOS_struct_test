//
//  JobRoleSelectorMenu.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

private let reuseIdentifier = "Cell"

class JobRoleMenuViewController: UICollectionViewController {
    
    // MARK: - Properties
    
    var userModel: UserModel!
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configureNavigationBar()
        
//        print("printing jobmodel \(userModel)")

        
        collectionView.backgroundColor = .white
        self.collectionView.register(JobRoleCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.backgroundColor = .white

        configureNavigationBar()
    }
    
    // MARK: - Helpers
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .white // BarBackgroundColor
        navigationController?.navigationBar.tintColor = .black // BarTextColor
//        navigationController?.navigationBar.barStyle = .black  // SystemIcon Colors
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Job Menu"

        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handleDone))
    }
    
    
    
    // MARK: -
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return JobRoleCategory.numberOfItems
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! JobRoleCell
        cell.jobRole = JobRoleCategory.allCases[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("DEBUG: jobTitle = \(JobRoleCategory(rawValue: indexPath.row)!.jobRoleType)")
    }
}

// MARK: -

extension JobRoleMenuViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 2) / 3
        return CGSize(width: width, height: width)
    }
}


