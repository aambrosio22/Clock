//
//  RowSnoozeView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

//snooze è ritarda

struct RowSnoozeView: View {
    @State private var snooze: Bool = true
    var body: some View {
        VStack{
            Toggle("Snooze", isOn: $snooze )
            if snooze{
                //aggiungere che l'alrm si deve ritardare di 2 min o 5 
            }else {
                
            }
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .cornerRadius(10)
        .frame(width: 375, height: 60)
    }
}

struct RowSnoozeView_Previews: PreviewProvider {
    static var previews: some View {
        RowSnoozeView()
    }
}
