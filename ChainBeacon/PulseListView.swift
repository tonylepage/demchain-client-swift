//
//  PulseView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/29.
//

import SwiftUI

struct PulseListView: View {
    let pulses: [BeaconRun]
    
    var body: some View {
        List {
            ForEach(pulses) { pulse in
                NavigationLink(destination: PulseDetailView(pulse: pulse)) {
                    CardPulseView(pulse: pulse)
                }
                .listRowBackground(pulse.theme.mainColor)
            }
        }
        .navigationTitle("Beacon History")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
        }
    }
}

struct PulseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PulseListView(pulses: BeaconRun.sampleData)
        }
    }
}

