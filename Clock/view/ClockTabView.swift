//
//  ClockTabView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct ClockTabView: View {
    var body: some View {
                TabView {
                    WorldClockView()
                        .tabItem {
                            Label("World Clock", systemImage: "globe")
                        }

                    AlarmView()
                        .tabItem {
                            Label("Alarm", systemImage: "alarm.fill")
                        }
                    StopWatchView()
                        .tabItem {
                            Label("Stopwatch", systemImage: "stopwatch.fill")
                        }
                    TimerView()
                        .tabItem {
                            Label("Timer", systemImage: "timer")
                        }
        }
                .accentColor(.orange)
                .colorScheme(.dark)
    }
}

struct ClockTabView_Previews: PreviewProvider {
    static var previews: some View {
        ClockTabView()
    }
}
