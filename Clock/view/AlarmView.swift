//
//  ContentView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct AlarmView: View {
    @State var addSheet = false
    @ObservedObject var alarmVM = AlarmViewModel()
    @State var selectedAlarm: Alarm? = nil
    @State var labelTextField: String = "Label of the alarm"
    //@State var selectedTime: Date
    //  @EnvironmentObject var dataStore: AlarmViewModel
    
    var body: some View {
        
        VStack (alignment: .leading){
            
            HStack{
                Text("Alarm")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                Button {
                    addSheet.toggle()
                    
                } label: {
                    AddAlarmButtonView()
                }
                .sheet(isPresented: $addSheet) {
                    AddAlarmView( labelTextField: self.$labelTextField, alarmVM: alarmVM)
                }
                
            }
            
            Text (" Sleep| Wake Up")
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
            Spacer()
            
            //lista
            List{
                //per ogni var alarms=[] della classe alarmVM
                ForEach(alarmVM.alarmsArray){
                    alarm in
                    Button{
                        self.selectedAlarm = alarm
                        self.addSheet.toggle()
                    }label: {
                        //l'errore è che mi prende l'alarm della AlramRowView ma io voglio quello della classe, come faccio ?Come uso binding o enviroment object per risolvere?
                        AlarmRowView(alarmMostrato: alarm)
                    }
                }
                .onDelete(perform: alarmVM.remove)
            }.listStyle(.plain)
            //dico che la sheet mi deve restituire un alarmVM
                .sheet(item: $selectedAlarm){
                    alarm in
                    AddAlarmView( labelTextField: self.$labelTextField, alarmVM: alarmVM)
                }
            
            
        }
        .padding(16)
        .background(.black)
        .colorScheme(.dark)
        .accentColor(.orange)
        
    }
}


//struct AlarmView_Previews: PreviewProvider {
//    static var previews: some View {
//        AlarmView()
//            .environmentObject(AlarmViewModel())
//    }
//}
