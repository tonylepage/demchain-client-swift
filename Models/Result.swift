//
//  Result.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/30.
//

import Foundation

struct Result: Identifiable {
    let id: UUID
    var runAt: Date
    var url: String
    var endpoint: String
    var rtt: Double
    var ttfb: Double
    var traceroute: [Traceroute]
    
    init(id: UUID = UUID(), runAt: Date, url: String, endpoint: String, rtt: Double, ttfb: Double, traceroute: [Traceroute]) {
        self.id = id
        self.runAt = runAt
        self.url = url
        self.endpoint = endpoint
        self.rtt = rtt
        self.ttfb = ttfb
        self.traceroute = traceroute
    }
}

extension Result {

    struct Data {
        var runAt: Date = Date()
        var url: String = ""
        var endpoint: String = ""
        var rtt: Double = 3
        var ttfb: Double = 3
        var traceroute: [Traceroute] = []
    }
    
    var data: Data {
        Data(url: url, endpoint: endpoint, rtt: rtt, ttfb: ttfb, traceroute: traceroute)
    }
}

extension Result {
    
    static let sampleData: [Result] =
    [
        Result(runAt: Date(), url: "https://cloudfront.cdnsuehprom.com/img/r20.gif", endpoint: "CloudFront", rtt: 999, ttfb: 91, traceroute: [
            Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
            Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
            Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
            Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
            Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937),
            Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 13743)
        ]),
        Result(runAt: Date(), url: "https://ali.cdnsuehprom.com/img/r20.gif", endpoint: "AliCloud", rtt: 999, ttfb: 91, traceroute: [
            Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
            Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1013),
            Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 6650),
            Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "172.2.192.108", rtt: 711),
            Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "203.23.106.10", rtt: 1883)
        ]),
        Result(runAt: Date(), url: "https://akamai.cdnsuehprom.com/img/r20.gif", endpoint: "Akamai", rtt: 999, ttfb: 91, traceroute: [
            Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
            Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 998),
            Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 5571),
            Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 413),
            Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 2013),
            Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 11408)
        ])
    ]
}
