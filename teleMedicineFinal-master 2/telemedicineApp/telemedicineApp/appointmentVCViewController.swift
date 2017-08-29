//
//  appointmentVCViewController.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 8/4/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var notesLabel: UILabel!
}


class AppointmentVCViewController: UIViewController {
//    @IBOutlet weak var appointmentTableView: UITableView!
//    let appointmentModel = AppointmentModel()
//    var tappedRow: Int?
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addAppointment))
//        self.navigationItem.rightBarButtonItem = addButton
//    }
//    
//    
//    func appointmentEdited(name2: String, notes2: String, date2: String) {
//        guard let actualTappedRow = tappedRow else {
//            return
//        }
//        appointmentModel.appointments[actualTappedRow].dateMod = date2
//        appointmentModel.appointments[actualTappedRow].doctorNameMod = name2
//        appointmentModel.appointments[actualTappedRow].notesMod = notes2
//        appointmentTableView.reloadData()
//        appointmentModel.textChanged()
//    }
//    
//    
//    
//    func itemsChanged() {
//    appointmentTableView.reloadData()
//    }
//    
//    override func viewWillAppear(_ animated: Bool) {
//    super.viewWillAppear(animated)
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//    return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return appointmentModel.appointments.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let itemCell = appointmentTableView.dequeueReusableCell(withIdentifier: "cell") as? Cell
//    itemCell?.nameLabel.text = appointmentModel.appointments[indexPath.row].doctorNameMod
//    itemCell?.dateLabel.text = appointmentModel.appointments[indexPath.row].dateMod
//    itemCell?.notesLabel.text = appointmentModel.appointments[indexPath.row].notesMod
//        return itemCell!
//    }
//    
//    
//    func addAppointment() {
//        appointmentModel.addMenuItems(doctorName1: "Doctor Name", date1: "Date", notes1: "Notes")
//        let indexPath = IndexPath(row:(appointmentModel.appointments.count)-1, section:0)
//        appointmentTableView.beginUpdates()
//        appointmentTableView.insertRows(at: [indexPath], with: .automatic)
//        appointmentTableView.endUpdates()
//        appointmentTableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
//        self.performSegue(withIdentifier: "toDetailView", sender: nil)
//    }
//    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//    if editingStyle == .delete {
//    appointmentModel.appointments.remove(at: indexPath.row)
//    appointmentTableView.deleteRows(at: [indexPath], with: .automatic)
//    appointmentModel.removeItems()
//    }
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    self.performSegue(withIdentifier: "toDetailView", sender: nil)
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if let editorViewController: AppointmentEditor = segue.destination as? AppointmentEditor {
//        tappedRow = appointmentTableView.indexPathForSelectedRow?.row
//        guard let safeTappedRow = tappedRow else {
//            return
//        }
//        editorViewController.reciever = self
//        //print(appointmentModel.appointments[safeTappedRow].doctorName!)
//        editorViewController.name = appointmentModel.appointments[safeTappedRow].doctorNameMod!
//        editorViewController.date = appointmentModel.appointments[safeTappedRow].dateMod!
//        editorViewController.notes = appointmentModel.appointments[safeTappedRow].notesMod!
//        
//        }
//    }
}
