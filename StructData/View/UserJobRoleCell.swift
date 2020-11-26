//
//  UserJobRoleCell.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

class JobRoleCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    var jobRole: JobRoleCategory! {
          didSet {
              categoryLabel.text = jobRole.jobRoleType
              categoryImageView.image = jobRole.image
          }
      }
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.tintColor = .black
        return label
    }()
    
   var categoryImageView: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
   
    // MARK: - Lifcycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(categoryImageView)
        categoryImageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 40, paddingLeft: 40, paddingBottom: 40, paddingRight: 40)
        
        addSubview(categoryLabel)
        categoryLabel.centerX(inView: self)
        categoryLabel.anchor(bottom: bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
