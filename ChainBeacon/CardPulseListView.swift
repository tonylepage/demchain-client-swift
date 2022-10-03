//
//  CardView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/28.
//

import SwiftUI

struct CardPulseListView: View {
    let pulse: BeaconRun
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Image(systemName: "calendar.badge.clock")
                }
                VStack {
                    HStack {
                        Text("Test Date: \(pulse.testDate.formatted(date: .abbreviated, time: .omitted))")
                            .font(.headline)
                            .accessibilityAddTraits(.isHeader)
                        Spacer()
                    }
                    HStack {
                        Text("at \(pulse.testDate.formatted(date: .omitted, time: .shortened))")
                            .accessibilityLabel("Test time \(pulse.testDate.formatted(date: .omitted, time: .shortened))")
                            .font(.caption)
                        Spacer()
                    }
                }
            }
            HStack {
                Label("\(pulse.results.count) endpoints", systemImage: "checklist")
                    .accessibilityLabel("\(pulse.results.count) CDNs tested")
                Spacer()
                Label("\(pulse.lengthInMilliseconds)s", systemImage: "clock")
                    .accessibilityLabel("The test took \(pulse.lengthInMilliseconds) milliseconds")
                    .labelStyle(.trailingIcon)
            }
            .padding(2)
            .font(.callout)
        }
        .padding()
        .foregroundColor(pulse.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var pulse = BeaconRun.sampleData[0]
    static var previews: some View {
        CardPulseListView(pulse: pulse)
            .background(pulse.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
