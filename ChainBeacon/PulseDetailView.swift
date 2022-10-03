//
//  DetailView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/29.
//

import SwiftUI
import Foundation

struct PulseDetailView: View {
    let pulse: BeaconRun

    var body: some View {

        
        VStack {
            List {
                Section(header: Text("Test Details")){
                    HStack {
                        Label("Test Date", systemImage: "calendar.badge.clock")
                        Spacer()
                        Text("\(pulse.testDate.formatted(date: .abbreviated, time: .shortened))")
                    }
                    HStack {
                        Label("Total Runtime", systemImage: "clock.badge.checkmark.fill")
                        Spacer()
                        Text("\(pulse.lengthInMilliseconds)")
                    }
                    HStack {
                        Label("Endpoints Tested", systemImage: "checklist")
                        Spacer()
                        Text("\(pulse.results.count)")
                    }
                    .accessibilityElement(children: .combine)
                }

                ForEach(pulse.results) { result in
                    NavigationLink(destination: ResultDetailView(result: result)) {
                        CardResultView(result: result)
                    }
                    .listRowBackground(pulse.theme.mainColor)
                }
            }
            .navigationTitle("Pulse Results")
        }
    }
}

struct PulseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PulseDetailView(pulse: BeaconRun.sampleData[0])
        }
    }
}
