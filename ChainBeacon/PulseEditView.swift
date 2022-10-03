//
//  PulseEditView.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/29.
//

import SwiftUI

struct PulseEditView: View {
    @State private var data = BeaconRun.Data()
    @State private var newEndpointName = ""
    @State private var newEndpointUrl = ""
    
    var body: some View {
        Form {
            Section(header: Text("Pulse Details")) {
            //    TextField("Date", Date: $data.testDate)
                HStack {
                    Slider(value: $data.lengthInMilliseconds, in: 0...60000, step: 1 ) {
                        Text("Duration")
                    }
                    Spacer()
                    Text("\(Int(data.lengthInMilliseconds)) ms")
                }
            }
            Section(header: Text("Endpoints")) {
                ForEach(data.results) { result in
                    Text(result.endpoint)
                }
                .onDelete { indices in
                    data.results.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Endpoint", text: $newEndpointName)
                    TextField("URL", text: $newEndpointUrl)
                    Button(action: {
                        withAnimation {
                            let endpoint = BeaconRun.Endpoint(name: newEndpointName, url: newEndpointUrl)
                           // data.results.append(endpoint)
                            newEndpointName = ""
                            newEndpointUrl = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newEndpointUrl.isEmpty || newEndpointName.isEmpty)
                }
            }
        }
    }
}

struct PulseEditView_Previews: PreviewProvider {
    static var previews: some View {
        PulseEditView()
    }
}
