import UIKit

// 데이트포멧 선언
let df = DateFormatter()
df.dateFormat = "yyyyMMdd"
df.timeZone = TimeZone.init(abbreviation: "GMT")    // 타임존 셋업

let dateStart = df.date(from: "19660713")   // 시작날 date 선언
let dateEnd = df.date(from: "20200724")     // 마지막날 date 선언
let startTime : Double = (dateStart?.timeIntervalSince1970)!    // UTC 변환
let endTime : Double = (dateEnd?.timeIntervalSince1970)!        // UTC 변환
let oneDayTime : Double = 24 * 60 * 60  // 하루 단위 초 UTC

// UTC 타임으로 하루씩 증가
for time in stride(from: startTime, through: endTime, by: oneDayTime) {
    // 날짜를 가져와서 바이너리로 변환
    let strDate = df.string(from: Date.init(timeIntervalSince1970: time))
    let strBinary = String(Int(strDate)!, radix: 2)
    // 바이너리를 리버스하여 다시 날짜로 변환
    let reverseBin = strBinary.reversed()
    let reverseDate = Int(String(reverseBin), radix: 2)
    
    // 날짜를 Int 값으로 비교함
    if Int(strDate) == reverseDate {
        print("\(strDate)")
    }
}
