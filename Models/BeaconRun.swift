//
//  BeaconRun.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/28.
//

import Foundation

struct Traceroute {
    var hopNumber: Int
    var hostname: String
    var ip: String
    var rtt: Int
}

struct Result: Identifiable {
    let id: UUID
    var url: String
    var endpoint: String
    var rtt: Int
    var ttfb: Int
    var traceroute: [Traceroute]
    
    init(id: UUID = UUID(), url: String, endpoint: String, rtt: Int, ttfb: Int, traceroute: [Traceroute]) {
        self.id = id
        self.url = url
        self.endpoint = endpoint
        self.rtt = rtt
        self.ttfb = ttfb
        self.traceroute = traceroute
    }
}

struct BeaconRun: Identifiable {
    let id: UUID
    var testDateString: String
    var results: [Result]
    var lengthInMilliseconds: Int
    var theme: Theme
    
    init(id: UUID = UUID(), testDateString: String, results: [Result], lengthInMilliseconds: Int, theme: Theme) {
        self.id = id
        self.testDateString = testDateString
        self.results = results
        self.lengthInMilliseconds = lengthInMilliseconds
        self.theme = theme
    }
}

struct Endpoint: Identifiable {
    let id: UUID
    var name: String
    var url: String
    
    init(id: UUID = UUID(), name: String, url: String) {
        self.id = id
        self.name = name
        self.url = url
    }
}

extension BeaconRun {
    
    static let cdnList: [Endpoint] =
    [
        Endpoint(name: "CloudFront", url: "https://cloudfront.cdnsuehprom.com/img/r20.gif"),
        Endpoint(name: "AliCloud", url: "https://ali.cdnsuehprom.com/img/r20.gif"),
        Endpoint(name: "Akamai", url: "https://akamai.cdnsuehprom.com/img/r20.gif")
    ]
        
    static let sampleData: [BeaconRun] =
    [
        BeaconRun(testDateString: "2022-09-01T16:39:57-08:00", results: [
            Result(url: "https://cloudfront.cdnsuehprom.com/img/r20.gif", endpoint: "CloudFront", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937),
                Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 13743)
            ]),
            Result(url: "https://ali.cdnsuehprom.com/img/r20.gif", endpoint: "AliCloud", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1013),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 6650),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "172.2.192.108", rtt: 711),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "203.23.106.10", rtt: 1883)
            ]),
            Result(url: "https://akamai.cdnsuehprom.com/img/r20.gif", endpoint: "Akamai", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 998),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 5571),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 413),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 2013),
                Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 11408)
            ])
        ], lengthInMilliseconds: 430000, theme: .purple),
        BeaconRun(testDateString: "2022-09-01T16:41:12-08:00", results: [
            Result(url: "https://cloudfront.cdnsuehprom.com/img/r20.gif", endpoint: "CloudFront", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937),
                Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 13743)
            ]),
            Result(url: "https://ali.cdnsuehprom.com/img/r20.gif", endpoint: "AliCloud", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937),
                Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 13743)
            ]),
            Result(url: "https://akamai.cdnsuehprom.com/img/r20.gif", endpoint: "Akamai", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937)
            ])
        ], lengthInMilliseconds: 27000, theme: .seafoam),
        BeaconRun(testDateString: "2022-09-01T16:45:32-08:00", results: [
            Result(url: "https://cloudfront.cdnsuehprom.com/img/r20.gif", endpoint: "CloudFront", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937)
            ]),
            Result(url: "https://ali.cdnsuehprom.com/img/r20.gif", endpoint: "AliCloud", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706)
            ]),
            Result(url: "https://akamai.cdnsuehprom.com/img/r20.gif", endpoint: "Akamai", rtt: 999, ttfb: 91, traceroute: [
                Traceroute(hopNumber: 1, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 0),
                Traceroute(hopNumber: 2, hostname: "obfuscated.internal.network.com", ip: "0.0.0.0", rtt: 1000),
                Traceroute(hopNumber: 3, hostname: "v995.core1.sjc1.he.net", ip: "64.71.150.21", rtt: 7580),
                Traceroute(hopNumber: 4, hostname: "10gigabitethernet2-1.core1.sjc2.he.net", ip: "72.52.92.118", rtt: 706),
                Traceroute(hopNumber: 5, hostname: "eqix2.cr2.sjc2.twttr.com", ip: "206.223.116.101", rtt: 1937),
                Traceroute(hopNumber: 6, hostname: "xe-11-0-0.smf1-er1.twttr.com", ip: "199.16.159.51", rtt: 13743)
            ])
        ], lengthInMilliseconds: 488020, theme: .sky)
    ]
}
