//
//  Task1App.swift
//  Task1
//
//  Created by makotoyasuda on 2021/06/04.
//

import SwiftUI

// @main:SwiftUIのエントリーポイント
@main
// 構造体Task1Appがアプリのエントリポイントになっている
// App:表示内容を定義
struct Task1App: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        // WindowGroup:ビューコンテナ階層
        WindowGroup {
            ContentView()
//            HomeView()
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                // アプリ起動時、フォアグラウンド（アクティブ）
                print("App State : active")
            case .inactive:
                // フォアグラウンド（非アクティブ）
                print("App State : inactive")
            case .background:
                // バックグラウンド
                print("App State : background")
            @unknown default:
                print("App State : unknown")
            }
        }
    }
}
