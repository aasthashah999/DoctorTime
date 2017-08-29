//
//  PatientProfileVC.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 8/2/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//

import UIKit
import Parse
class PatientProfileVC: UIViewController {
    
    @IBOutlet weak var sexLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBAction func logoutAction(_ sender: Any) {
    
        let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        PFUser.logOut()
    }
    
    
    override func viewDidLoad() {
        updateUI()
        profileImage.layer.cornerRadius = profileImage.frame.size.width/1.6
        profileImage.clipsToBounds = true
        print("User\(PFUser.current())")
    }
    func updateUI() {
        nameLabel.text = (PFUser.current()?.object(forKey: "name") as? String)!
        sexLabel.text = (PFUser.current()?.object(forKey: "sex") as? String)!
        languageLabel.text = (PFUser.current()?.object(forKey: "language") as? String)!
        ageLabel.text = String(describing:  (PFUser.current()?.object(forKey: "age") as! Int))
        
        }
    }
    


    


