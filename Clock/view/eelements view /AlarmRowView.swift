//
//  AlarmRowView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

/*
 @State private var rowToggle: Bool = true
 attenzione form della label inventato
 
 Toggle("\(alarm.date ?? Date(), formatter:alarmFormatter) \(alarm.label ?? "   ", form:.subtitle)", isOn: $rowToggle )
 if rowToggle{
 //alarm attivo
 } else {
 //alarm spento
 }
 */

struct AlarmRowView: View {
    @State var rowToggle: Bool = true
    @ObservedObject var alarmVM = AlarmViewModel()
    //in questo modo prendo la var dalla struct che ho inizializato e non lo prendo dall'alarmviewmodel che è il valore cambiato
    var alarmMostrato : Alarm
    
    var body: some View {
        
        HStack{
           
            //Text(alarm.date ?? Date(), formatter: itemFormatter)
            //Text(alarm.label)
            
            Toggle(isOn: $rowToggle){
                VStack(alignment: .leading){
                    
                    Text ("\(alarmMostrato.selectedTime, formatter: alarmFormatter)")
                        .font(.largeTitle)
                    Text("\(alarmMostrato.label)")
                        .font(.subheadline)
                }

            }
            if rowToggle{
                //sveglia attiva
            }else{
                //sveglia spenta
            }
           /* Text(alarmRowView.label)
                .font(.headline)
            */
        }
    }
    private let alarmFormatter: DateFormatter = {
        let formatter = DateFormatter()
      //  formatter.dateStyle = .short
       formatter.timeStyle = .short
        return formatter
    }()
}

/*
struct AlarmRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmRowView( )
            
    }
}
*/
