//
//  DateHelper.swift
//  ChainBeacon
//
//  Created by Lepage Tony on 2022/9/30.
//

import Foundation

// "2022-09-01T16:39:57-08:00"

public var jsonDateFormatter: DateFormatter = {
    let RFC3339DateFormatter = DateFormatter()
    RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
    RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    return RFC3339DateFormatter
}()

public var jsonDateFormatterWithMillis: DateFormatter = {
    let RFC3339DateFormatter = DateFormatter()
    RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
    RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    return RFC3339DateFormatter
}()

func toDate(_ dateString: String) -> Date? {
    if let result = jsonDateFormatter.date(from: dateString) {
        return result
    } else if let result = jsonDateFormatterWithMillis.date(from: dateString) {
        return result
    } else {
        return nil
    }
}
