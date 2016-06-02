//
//  AddJobViewController.swift
//  On The Clock
//
//  Created by Matt Gioe on 6/1/16.
//  Copyright © 2016 Matt Gioe. All rights reserved.
//

import Foundation
import UIKit

class AddJobViewController: UIViewController, UITextFieldDelegate, UIScrollViewDelegate {

    @IBOutlet weak var hourlyRateTextField: UITextField!
    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var mainScrollView: UIScrollView!

    var hourlyRateTextFieldFrame : CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: #selector(AddJobViewController.keyboardWillShow(_:)),
            name: UIKeyboardWillShowNotification,
            object: nil
        )
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: #selector(AddJobViewController.keyboardWillHide(_:)),
            name: UIKeyboardWillHideNotification,
            object: nil
        )
        
        registerDelegates()
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func registerDelegates(){
        companyTextField.delegate = self
        hourlyRateTextField.delegate = self
        mainScrollView.delegate = self
    }
    
    func keyboardWillShow(notification: NSNotification) {
        adjustInsetForKeyboardShow(true, notification: notification)
    }
    
    func keyboardWillHide(notification: NSNotification) {
        adjustInsetForKeyboardShow(false, notification: notification)
    }
    
    func adjustInsetForKeyboardShow(show: Bool, notification: NSNotification) {
        guard let value = notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue else { return }
        let keyboardFrame = value.CGRectValue()
        let adjustmentHeight = (CGRectGetHeight(keyboardFrame) + 20)
        
        switch show {
        case true:
            mainScrollView.contentInset.bottom = adjustmentHeight
        default:
            mainScrollView.contentInset.bottom = -adjustmentHeight
        }
    }

    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool{
        switch textField {
        case companyTextField:
            textField.keyboardType = UIKeyboardType.Alphabet
            return true;
        default:
            textField.keyboardType = UIKeyboardType.NumbersAndPunctuation
            return true;
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}