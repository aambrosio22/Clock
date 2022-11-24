//
//  StopWatchView.swift
//  Clock
//
//  Created by Antonia Ambrosio on 18/11/22.
//

import SwiftUI

struct LapClass: Identifiable {
    var id = UUID()
    let lap: Double
    
    init(_ lap: Double){
        self.lap = lap
    }
    
}

struct StopWatchView: View {
    @ObservedObject var managerClass = ManagerClass()
    @State private var lapTimings : [LapClass] = []
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .center){
                
                Text(String(format: "%.2f", managerClass.secondElapsed))
                    .font(.system(size: 120))
                
                HStack{
                    switch managerClass.mode{
                        
                    case .running:
                        HStack {
                        withAnimation{
                            Button(action: {
                                managerClass.stopTimer()
                                lapTimings = []
                            }, label:{
                                ButtonStopStopWatchView()
                            })
                        }
                            withAnimation{
                                Button(action: {
                                    let newLap = LapClass(managerClass.secondElapsed)
                                    lapTimings.append(newLap)
                                }, label:{
                                    LapTimingSaveButtonStopWatchView()
                                })
                            }
                        withAnimation{
                            Button(action: {
                                managerClass.pauseTimer()
                            }, label:{
                                ButtonPauseStopWatchView()
                            })
                        }
                        }
                        
                    case.stopped:
                        withAnimation{
                            Button(action: {
                                managerClass.startTimer()
                            }, label:{
                                ButtonPlayStopWatchView()
                            })
                        }
                        
                    case .paused:
                        HStack{
                            withAnimation{
                                Button(action: {
                                    managerClass.startTimer()
                                }, label:{
                                    ButtonPlayStopWatchView()
                                })
                            }
                            withAnimation{
                                Button(action: {
                                    managerClass.stopTimer()
                                    lapTimings = []
                                }, label:{
                                    ButtonStopStopWatchView()
                                })
                            }
                        }
                    }
                }
        List(lapTimings){lap in
            Text("\(String(format: "%.2f", lap.lap))s")
                }
                
            }.padding( )
            
        }
        .colorScheme(.dark)
    }
}

enum mode{
    case running
    case stopped
    case paused
}

class ManagerClass: ObservableObject{
    @Published var secondElapsed = 0.0
    @Published var mode: mode = .stopped
    var timerVar = Timer()
    
     func startTimer(){
        mode = .running
        timerVar = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timerVar in
            self.secondElapsed += 0.1
        }
    }
    
     func stopTimer(){
        timerVar.invalidate()
        secondElapsed = 0
        mode = .stopped
    }
    
    public func pauseTimer(){
        timerVar.invalidate()
        mode = .paused
    }
}







struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView( )
        
    }
}
