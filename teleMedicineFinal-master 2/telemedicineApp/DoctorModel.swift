//
//  DoctorModel.swift
//  telemedicineApp
//
//  Created by Aastha Shah on 7/29/17.
//  Copyright © 2017 Aastha Shah. All rights reserved.
//
//MARK: Aastha Shah
import Foundation

enum Specialty: String {
    case obgyn = "obgyn"
    case cardiology = "cardiology"
    case dentistry = "dentistry"
    case optometry = "optometry"
    case orthopedics = "orthopedics"
    case pediatrics = "pediatrics"
}
enum OnlineState : String{
    case online = "online"
    case offline = "offline"
}
struct Doctor {
    var name: String?
    var specialty: Specialty?
    var price: Int
    var language: String?
    var state: OnlineState
    var location: String?
    var numYearsPractice: Int
    var phoneNumber: Int?
}

class DoctorModel {
    var doctorsArray = [
        Doctor(name: "Shah", specialty: .pediatrics, price: 100, language: "English", state: .offline, location: "USA", numYearsPractice: 5, phoneNumber: 1),
        Doctor(name: "Vama", specialty: .orthopedics, price: 50, language: "English", state: .online, location: "USA", numYearsPractice: 5, phoneNumber: 1),
        Doctor(name: "An", specialty: .cardiology, price: 75, language: "English", state: .online, location: "USA", numYearsPractice: 5, phoneNumber: 1),
        Doctor(name: "An", specialty: .dentistry, price: 75, language: "English", state: .offline, location: "USA", numYearsPractice: 5, phoneNumber: 1),
        Doctor(name: "Shah", specialty: .pediatrics, price: 100, language: "English", state: .online, location: "USA", numYearsPractice: 5, phoneNumber: 1),
        Doctor(name: "AnHoang", specialty: .cardiology, price: 10, language: "English", state: .online, location: "USA", numYearsPractice: 5, phoneNumber: 31)]
    
    func getNumberofDoctorsInEachSpecialty(specialty:Specialty) -> [Doctor] {
        //SOURCE: https://stackoverflow.com/questions/40804458/how-to-filter-an-array-of-structs-with-value-of-other-array-in-swift
        return doctorsArray.filter({$0.specialty == specialty})
    }
    
    func getArrayOfDoctorsOnline (state: OnlineState)-> [Doctor] {
        return doctorsArray.filter({$0.state == state})
    }
}
