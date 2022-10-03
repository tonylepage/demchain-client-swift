//
//  ResultDetailView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/30.
//

import SwiftUI

struct ResultDetailView: View {
    let result: Result
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("CDN: \(result.endpoint)")
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            HStack {
                Label("Tested on \(result.runAt.formatted(date: .abbreviated, time: .shortened))", systemImage: "calendar.badge.clock")
                    .accessibilityLabel("tested on (result.runAt)")
            }
            .padding(2)
            HStack {
                Label("Round-Trip-Time (RTT):", systemImage: "clock.arrow.circlepath")
                    .accessibilityLabel("round trip time")
                Spacer()
                Label(" \(NSString(format: "%.3f", result.rtt)) s", systemImage: "hourglass")
                    .accessibilityLabel("The round trip time was \(result.rtt) in seconds")
                    .labelStyle(.trailingIcon)
            }
            .padding(2)
            HStack {
                Label("Time-to-First-Byte (TTFB):", systemImage: "clock.badge.checkmark")
                    .accessibilityLabel("time to first byte")
                Spacer()
                Label(" \(NSString(format: "%.3f", result.rtt)) s", systemImage: "hourglass")
                    .accessibilityLabel("The time to first byte was \(result.ttfb) in seconds")
                    .labelStyle(.trailingIcon)
            }
            .padding(2)
            HStack {
                Label("Traceroute details", systemImage: "directcurrent")
                    .accessibilityLabel("time to first byte")
                Spacer()
                Label(" \(result.traceroute.count) hops", systemImage: "network")
                    .accessibilityLabel("The time to first byte was \(result.ttfb) in seconds")
                    .labelStyle(.trailingIcon)
            }
            .padding(2)
            HStack {
                Label("Endpoint: \(result.url)", systemImage: "link.icloud")
                    .accessibilityLabel("\(result.url) URL tested")
            }
            Spacer()
        }
        .navigationTitle("Single CDN Results")
        .font(.caption)
        .padding()
    }
    
}

struct ResultDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultDetailView(result: Result.sampleData[0])
        }
    }
}

