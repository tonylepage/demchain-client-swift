//
//  PulseView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/29.
//
// <script async data-id="pulse" data-trackid="n98h5tdz" src="https://beacon.fusioncdn.com/pulse.js?trackid=n98h5tdz"></script>

import SwiftUI

struct PulseListView: View {
    let pulses: [BeaconRun]
    
    var body: some View {
        List {
            ForEach(pulses) { pulse in
                NavigationLink(destination: PulseDetailView(pulse: pulse)) {
                    CardPulseListView(pulse: pulse)
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

