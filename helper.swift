import Foundation

// convert an NSDate object to a timestamp string

func convertToTimestamp(date: NSDate) -> String {
    return String(Int64(date.timeIntervalSince1970 * 1000))
}

// Convert the timestamp string to an NSDate object

func convertFromTimestamp(seconds: String) -> NSDate {
    let time = (seconds as NSString).doubleValue/1000.0
    return NSDate(timeIntervalSince1970: NSTimeInterval(time))
}

// format the date using a timestamp

func formatDateTime(timestamp: String) -> String {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateStyle = .ShortStyle
    dateFormatter.timeStyle = .ShortStyle
    let date = convertFromTimestamp(timestamp)
    return dateFormatter.stringFromDate(date)
}
