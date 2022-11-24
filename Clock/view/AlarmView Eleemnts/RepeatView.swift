//
//  RepeatView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct RepeatView: View {
    //@ObservedObject var alarmVM = AlarmViewModel()
    var body: some View {
        NavigationView{
           // Text("lista repeat da aggiungere")
            VStack(alignment: .leading){
                SingleRowRepeatViewChoice()
                
                SingleRowRepeatViewChoice()
                
                SingleRowRepeatViewChoice()
                
                SingleRowRepeatViewChoice()
                
                Spacer()
            }.padding(16)
            
            
           /*PER APPLICARE CIO' MODIFICO LA SingleRowRepeatView, NON SO FARE BINDING !!!!
            
            List{
            ForEach(alarmVM.alarms) { x in
                SingleRowRepeatViewChoice(title: x.title, wasCompleted: x.wasCompleted)
            }
        }*/
            }
        .navigationTitle("Repeat")
        .colorScheme(.dark)
        .accentColor(.orange)
    }
}

struct RepeatView_Previews: PreviewProvider {
    static var previews: some View {
        RepeatView()
    }
}
