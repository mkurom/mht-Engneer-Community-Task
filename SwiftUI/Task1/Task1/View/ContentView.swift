//
//  ContentView.swift
//  Task1
//
//  Created by makotoyasuda on 2021/06/04.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        Text("Hello World")
            .onChange(of: scenePhase) { phase in
                // AppプロトコルのscenePhaseの後に実行される
                print("user scene changed to..\(phase)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
