//
//  AddAlarmButtonView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct AddAlarmButtonView: View {
    var body: some View {
        
        Image(systemName: "plus")
            .resizable()
            .padding(6)
            .frame(width: 35, height: 35)
            .background(Color.black)
            .clipShape(Circle())
            .foregroundColor(.orange)
            .colorScheme(.dark)
            .accentColor(.orange)
    
    }
        
}

struct AddAlarmButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlarmButtonView()
    }
}
