//
//  CardResultView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/29.
//


import SwiftUI

struct CardResultView: View {
    let result: Result
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(result.endpoint)")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("RTT:", systemImage: "clock.arrow.circlepath")
                    .accessibilityLabel("round trip time")
                Spacer()
                Label(" \(NSString(format: "%.3f", result.rtt)) s", systemImage: "hourglass")
                    .accessibilityLabel("The round trip time was \(NSString(format: "%.3f", result.rtt)) in seconds")
                    .labelStyle(.trailingIcon)
            }
            Spacer()
            HStack {
                Label("TTFB:", systemImage: "clock.badge.checkmark")
                    .accessibilityLabel("time to first byte")
                Spacer()
                Label(" \(NSString(format: "%.3f", result.rtt)) s", systemImage: "hourglass")
                    .accessibilityLabel("The time to first byte was \(result.ttfb) in seconds")
                    .labelStyle(.trailingIcon)
            }
            Spacer()
            HStack {
                Label("Traceroute", systemImage: "directcurrent")
                    .accessibilityLabel("time to first byte")
                Spacer()
                Label(" \(result.traceroute.count) hops", systemImage: "network")
                    .accessibilityLabel("The time to first byte was \(result.ttfb) in seconds")
                    .labelStyle(.trailingIcon)
            }
        }
        .font(.caption)
        .padding()
    }
}

struct CardResultView_Previews: PreviewProvider {
    static var result = BeaconRun.sampleData[0].results[0]
    static var previews: some View {
        CardResultView(result: result)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
