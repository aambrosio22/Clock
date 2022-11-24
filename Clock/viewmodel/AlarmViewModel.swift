//
//  AlarmViewModel.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import Foundation
import SwiftUI

class AlarmViewModel: ObservableObject {
    // Manage the Model
    
    
    @Published var alarmsArray = [
        Alarm(label: "Alarm 1", selectedTime: Date.now),
        Alarm(label: "Medicine", selectedTime: Date.now)
    ]

    // User Intents
    func remove(at offsets: IndexSet) {
        alarmsArray.remove(atOffsets: offsets)
    }
    
    public func add(_ label: String , _ selectedTime: Date) -> Date{
        alarmsArray.append(Alarm(label: label, selectedTime: selectedTime))
        return selectedTime
        //print(selectedTime)

    }
    
  /*   let alarmFormatter: DateFormatter = {
    let formatter = DateFormatter()
   formatter.timeStyle = .medium
    return formatter
     }()*/
}

