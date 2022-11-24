//
//  AddAlarmView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct AddAlarmView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var labelTextField: String
    @State var selectedTime: Date = Date()
    var alarmVM : AlarmViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                VStack(alignment: .leading){
                    Text("Add Alarm")
                       // .foregroundColor(.white)
                        .bold()
                        .font(.title3)
                        //.frame(maxWidth: .infinity, alignment:.center)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button {
                                    dismiss()
                                } label: {
                                    Text("Cancel")
                                        .font(.headline)
                                }
                            }
                            ToolbarItem(placement: .navigationBarTrailing){
                                Button{
                                    alarmVM.add(labelTextField,selectedTime)
                                    dismiss()
                                    //lista sveglie
                                } label: {
                                    Text("Save")
                                        .font(.headline)
                                }
                            }
                            
                        }.padding( )
                }
               //TimerPickerView()
                Form{
                    DatePicker(" ",selection: $selectedTime, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.wheel)
                        
                }
                .colorScheme(.dark)
                
                Spacer()
                
                VStack(alignment: .center ){
                    RowRepeatView()
                    Divider()
                    TextField("label",text: $labelTextField )
                        .frame(width: 375, height: 70)
                    Divider()
                    RowSoundView()
                    Divider()
                    RowSnoozeView()
                    Divider()
                    
                    Spacer()
                }.padding()
            }
            .padding( )
                .colorScheme(.dark)
                .accentColor(.orange)
            
        }
        .colorScheme(.dark)
        .accentColor(.orange)
        //Spacer()
    }
}

/*struct AddAlarmView_Previews: PreviewProvider {

    static var previews: some View {
        AddAlarmView( alarmVM: AlarmViewModel())
        
    }
}*/
