//
//  ContentView.swift
//  Shared
//
//  Created by Tony Lepage on 2022/4/12.
//

import SwiftUI




struct MonitoringView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            VStack {
                Text("Seconds Elapsed")
                    .font(.caption)
                Label("300", systemImage: "hourglass.tophalf.fill")
            }
        }
    }
}

struct MonitoringView_Previews: PreviewProvider {
    static var previews: some View {
        MonitoringView()
    }
}
