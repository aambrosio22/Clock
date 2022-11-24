//
//  RowLabelView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 17/11/22.
//

import SwiftUI

struct RowLabelView: View {
   @Binding var labelTextField: String
    var body: some View {
        NavigationLink{
           LabelView()
        }label: {
            HStack{
              /*  Text("Label")
                    .foregroundColor(.white)
                    .font(.title3)
                Spacer()
                */
                TextField("label",text: $labelTextField )
                    .padding(.horizontal)
                //Image(systemName: "chevron.right")
                //    .foregroundColor(.white)
                    
            }.frame(width: 375, height: 60)
            
        }
        .padding()
        .frame(width: 375, height: 60)
        .cornerRadius(10)
    }
}

/*struct RowLabelView_Previews: PreviewProvider {
    static var previews: some View {
        RowLabelView(labelTextField: "test")
    }
}
*/
