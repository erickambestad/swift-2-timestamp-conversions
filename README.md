# swift-2-timestamp-conversions
A Swift 2 helper for converting dates to timestamps and back

```
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

// Current date
let currentDate = NSDate()

// Convert to timestamp string
let timestampFromDate = convertToTimestamp(currentDate)
print(timestampFromDate)

// Convert that timestamp back to an NSDate
let dateFromTimestamp = convertFromTimestamp(timestampFromDate)
print(dateFromTimestamp)

// Format the timestamp to a readable/timezone friendly format
let formattedTimestamp = formatDateTime(timestampFromDate)
print(formattedTimestamp)
```
