//
//  SoundView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct SoundView: View {
    var body: some View {
        NavigationView{
            Text("lista suoni da aggiunere")
        }
        .navigationTitle("Sound")
        .colorScheme(.dark)
        .accentColor(.orange)
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
    }
}
