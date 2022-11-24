//
//  TimePickerView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct TimePickerView: View {
    @State var selectedTime: Date
    
    var body: some View {
        Form{
            DatePicker(" ",selection: $selectedTime, displayedComponents: .hourAndMinute)
                .datePickerStyle(.wheel)
                
        }
        .colorScheme(.dark)
    }

}

/*struct TimePickerView_Previews: PreviewProvider {
    static var previews: some View {
        TimePickerView(selectedTime: )
    }
}
*/
