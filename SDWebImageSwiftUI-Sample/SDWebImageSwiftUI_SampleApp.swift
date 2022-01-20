//
//  SDWebImageSwiftUI_SampleApp.swift
//  SDWebImageSwiftUI-Sample
//
//  Created by Hiroaki-Hirabayashi on 2022/01/20.
//

import SwiftUI

@main
struct SDWebImageSwiftUI_SampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SampleView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
