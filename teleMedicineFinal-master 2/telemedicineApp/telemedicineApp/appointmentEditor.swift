//
//  appointmentEditor.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 8/4/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//

import Foundation
import UIKit
protocol AppointmentEdited {
    func appointmentEdited(name2: String, notes2: String, date2: String)
}
class AppointmentEditor: UIViewController {
    
//    @IBOutlet weak var dateTextField: UITextField!
//    
//    
//    
//    @IBOutlet weak var doctorNametxt: UITextField!
//    
//    
//    @IBOutlet weak var notestxt: UITextView!
//    var date: String = "" {
//        didSet{
//            if isViewLoaded {
//            dateTextField.text = date
//            }
//        }
//    }
//    var name: String = "" {
//        didSet{
//            if isViewLoaded {
//            doctorNametxt.text = name
//            }
//        }
//    }
//    var notes: String = "" {
//        didSet{
//            if isViewLoaded {
//            notestxt.text = date
//            }
//        }
//    }
//    var mainView: AppointmentVCViewController?
//    var reciever: AppointmentEdited?
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        dateTextField.text = date
//        doctorNametxt.text = name
//        notestxt.text = notes
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        guard let docName = doctorNametxt.text, let appDate = dateTextField.text, let notesTaken = notestxt.text else{
//            return
//        }
//        reciever?.appointmentEdited(name2: docName, notes2: notesTaken, date2: appDate)
//    }
//    
}
