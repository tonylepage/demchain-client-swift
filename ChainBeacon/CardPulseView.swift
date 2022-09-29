//
//  CardView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/28.
//

import SwiftUI

struct CardPulseView: View {
    let pulse: BeaconRun
    var body: some View {
        VStack(alignment: .leading) {
            Text("Test Number: \(pulse.id)")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(pulse.results.count)", systemImage: "antenna.radiowaves.left.and.right")
                    .accessibilityLabel("\(pulse.results.count) CDNs tested")
                Spacer()
                Label("\(pulse.lengthInMilliseconds)", systemImage: "clock")
                    .accessibilityLabel("The test took \(pulse.lengthInMilliseconds) milliseconds")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(pulse.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var pulse = BeaconRun.sampleData[0]
    static var previews: some View {
        CardPulseView(pulse: pulse)
            .background(pulse.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
