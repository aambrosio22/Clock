//
//  StructAlarm.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

//enum repeatRow {
//    case Sun,Mon,Tue,Wed,Thu,Fri,Sat
//
//    var dayString:String{
//        switch self{
//            case .Sun: return "Every Sunday"
//            case .Mon: return "Every Monday"
//            case .Tue: return "Every Tuesday"
//            case .Wed: return "Every Wednesday"
//            case .Thu: return "Every Thursday"
//            case .Fri: return "Every Friday"
//            case .Sat: return "Every Saturday"
//        }
//    }
//}

struct Alarm: Identifiable{
    
    var id = UUID()
    let selectedTime: Date
    let label: String
    // let sound: devo vedere func
    
    
    init(label: String, selectedTime: Date) {
        self.label = label
        self.selectedTime = Date()

    }
    
    
     public let alarmFormatter: DateFormatter = {
     let formatter = DateFormatter()
    formatter.timeStyle = .medium
     return formatter
     }()

}
