//
//  CreateAccountVC.swift
//  Makerspace
//
//  Created by Rob McMahon on 5/6/19.
//  Copyright © 2019 Rob McMahon. All rights reserved.
//

import Foundation
import UIKit

class CreateAccountVC: UIViewController {
    
    @IBOutlet weak var nameTextField: CustomTextField!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var badgeSegment: UISegmentedControl!
    
    @IBAction func createAccountButtonTouched(_ sender: CustomButton) {
        if let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC {
            self.present(homeVC, animated: true, completion: nil) //segue to home screen
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
} //end class
