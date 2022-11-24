//
//  LabelView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct LabelView: View {
    //Forse la devo dichiarare binding perchè è collegata la problema della AlarmRowView ? 
    @State var labelTextField: String = ""
    var body: some View {
        NavigationView{
            VStack (alignment: .center){
                TextField("label",text: $labelTextField )
            }
            .textFieldStyle(.roundedBorder)
            .padding(16)
            .frame(width: 375, height: 70)
            //.background(.black)
            .colorScheme(.dark)
            .accentColor(.orange)
            .cornerRadius(8)
        }
        .navigationTitle("Label")
        .colorScheme(.dark)
        .accentColor(.orange)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
