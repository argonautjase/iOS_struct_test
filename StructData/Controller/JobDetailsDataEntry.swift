//
//  JobDetailsDataEntry.swift
//  StructData
//
//  Created by Jason Wilkins on 25/11/2020.
//

import UIKit

// Make ViewController class implement UITextFieldDelegate, UITextViewDelegate delegate protocol.
class JobDetailsView: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    // Define vertical space distance between label and text field or text view item.
    let itemVerticalSpace:CGFloat = 40
    
    // Get screen size, width and height value.
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    // Set job title text field's width and height value.
    lazy var jobTitleTextFieldWidthCalculated = (screenWidth - 32)
//    let jobTitleTextFieldWidth:CGFloat = 300
    lazy var jobTitleTextFieldWidth:CGFloat = jobTitleTextFieldWidthCalculated
    let jobTitleTextFieldHeight:CGFloat = 40
    
    // Set job description text view's width and height value.
    lazy var jobDescTextViewWidthCalculated = (screenWidth - 32)
    lazy var jobDescTextViewWidth:CGFloat = jobDescTextViewWidthCalculated
//    let jobDescTextViewWidth:CGFloat = 200
    let jobDescTextViewHeight:CGFloat = 350
    
    // This is job title UITextField object.
    var jobTitleTextField:UITextField = UITextField()
    
    // This is job description UITextView object.
    var jobDescTextView:UITextView = UITextView()
    
    override func viewDidLoad() {
        configureNavigationBar()
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configureNavigationBar()
        
        configureDismissKeyboard()
        
        addJobTitleLabelAndTextField()
        
        addJobDescLabelAndTextView()
        
        jobTitleTextField.becomeFirstResponder()
        


    }

    
    /* This function will create and add job title label and text field to screen. */
    func addJobTitleLabelAndTextField(){
        
        // Set text field width, height and x,y location value of top left point.
        let jobTitleTextFieldX:CGFloat = (screenWidth - jobTitleTextFieldWidth)/2
        let jobTitleTextFieldY:CGFloat = screenHeight / 5
        
        // Calculate the text field frame as a CGRect object.
        let jobTitleTextFieldFrame:CGRect = CGRect(x: jobTitleTextFieldX, y: jobTitleTextFieldY, width: jobTitleTextFieldWidth, height: jobTitleTextFieldHeight)
        
        // Create the UITextField object.
        jobTitleTextField = UITextField(frame: jobTitleTextFieldFrame)
        
        // Set the UITextField object's border style.
        jobTitleTextField.borderStyle = UITextField.BorderStyle.roundedRect
        jobTitleTextField.layer.borderWidth = 2.0;
//        jobTitleTextField.layer.borderColor =
        jobTitleTextField.layer.cornerRadius = 5;
//        jobTitleTextField.clipsToBounds = true;
        
        // Set this ViewController object as the UITextField object's delegate.
        jobTitleTextField.delegate = self
        
        // Set UITextField object's placeholder and clear button mode.
        let placeholder = "Input where you work"
       
        jobTitleTextField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        

        jobTitleTextField.clearButtonMode = UITextField.ViewMode.always
        
        jobTitleTextField.font = UIFont.systemFont(ofSize: 17)

        
        
        // Set job title label top-left point x, y location. X value is same as jobTitleTextField's top-left point's x value.
        let jobTitleLabelX:CGFloat = jobTitleTextField.frame.origin.x
        
        // Y value is jobTitleTextField's top-left point's y value minus the space constant variable value.
        let jobTitleLabelY:CGFloat = jobTitleTextField.frame.origin.y - itemVerticalSpace
        
        // Job title label's width and height is same with jobTitleTextField.
        let jobTitleLabelWidth:CGFloat = jobTitleTextField.bounds.width
        let jobTitleLabelHeight:CGFloat = jobTitleTextField.bounds.height
        
        // Create job title label frame CGRect object.
        let jobTitleLabelRect:CGRect = CGRect(x: jobTitleLabelX, y: jobTitleLabelY, width: jobTitleLabelWidth, height: jobTitleLabelHeight)
        
        // Create job title UILabel object.
        let jobTitleLabel:UILabel = UILabel(frame: jobTitleLabelRect)
        
        // Set job title label text.
        jobTitleLabel.text = "Place of Work"
        jobTitleLabel.textColor = .black
        jobTitleLabel.font = .boldSystemFont(ofSize: 17)

        // Add job title label to the root view object.
        self.view.addSubview(jobTitleLabel)
        
        // Add job title text field as root view's sub view.
        self.view.addSubview(jobTitleTextField)
    }
    
    
    /* This function will create and add job description label and text view to screen. */
    func addJobDescLabelAndTextView(){
        
        // Set text view width, height and x,y location value of top left point.
        let jobDescTextViewX:CGFloat = (screenWidth - jobDescTextViewWidth)/2
        let jobDescTextViewY:CGFloat = jobTitleTextField.frame.origin.y + 3 * itemVerticalSpace
        
        // Calculate the text view frame as a CGRect object.
        let jobDescTextViewFrame:CGRect = CGRect(x: jobDescTextViewX, y: jobDescTextViewY, width: jobDescTextViewWidth, height: jobDescTextViewHeight)
        
        // Create the UITextView object.
        jobDescTextView = UITextView(frame: jobDescTextViewFrame)
        
        // Set this ViewController object as the UITextView object's delegate.
        jobDescTextView.delegate = self
        
        jobDescTextView.text = "Input job description."
        
        jobDescTextView.backgroundColor = UIColor.white
        jobDescTextView.textColor = .lightGray
        jobDescTextView.font = UIFont.systemFont(ofSize: 17)
        
        jobDescTextView.layer.borderWidth = 2
        jobDescTextView.layer.borderColor = UIColor.black.cgColor
        jobDescTextView.layer.cornerRadius = 5;
                
        // Set job description label top-left point x, y location. X value is same as jobDescTextView's top-left point's x value.
        let jobDescLabelX:CGFloat = jobDescTextView.frame.origin.x
        
        // Y value is jobDescTextView's top-left point's y value minus the space constant variable value.
        let jobDescLabelY:CGFloat = jobDescTextView.frame.origin.y - itemVerticalSpace
        
        // Job description label's width and height is same with jobDescTextView.
        let jobDescLabelWidth:CGFloat = jobDescTextView.bounds.width
        let jobDescLabelHeight:CGFloat = itemVerticalSpace
        
        // Create job description label frame CGRect object.
        let jobDescLabelRect:CGRect = CGRect(x: jobDescLabelX, y: jobDescLabelY, width: jobDescLabelWidth, height: jobDescLabelHeight)
        
        // Create job description UILabel object.
        let jobDescLabel:UILabel = UILabel(frame: jobDescLabelRect)
        
        // Set job description label text.
        jobDescLabel.text = "Job Description"
        jobDescLabel.textColor = .black
        jobDescLabel.font = .boldSystemFont(ofSize: 17)
        
        // Add job description label to the root view object.
        self.view.addSubview(jobDescLabel)
        
        // Add job description text view as root view's sub view.
        self.view.addSubview(jobDescTextView)
    }
 
    // This function is called when you input text in the textfield.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("textField")
        
        print("input text is : \(string)")
        
        return true
        
    }
    
    // This function is called when you input text in the textView.
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool{
        
        print("textView.")
        
        print("input text is : \(text)")
        
        return true
    }
    
// This function is called when you begin edit text view, we use this to remove the placeholder text
    func textViewDidBeginEditing(_ textView: UITextView) {
        jobDescTextView.textColor = .black
        textView.text = ""
    }
    
    // This function is called when you stop edit in the text view, such as change mouse focus to the text field input box.
    func textViewDidEndEditing(_ textView: UITextView) {
        print("textViewDidEndEditing")
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Job Details"
        navigationController?.navigationBar.barTintColor = .white
//        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.tintColor = .black


        
        }
}
