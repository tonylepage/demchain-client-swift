//
//  ChainBeaconApp.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/28.
//

import SwiftUI

@main
struct ChainBeaconApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                PulseListView(pulses: BeaconRun.sampleData)
            }
        }
    }
}
