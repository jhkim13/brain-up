import UIKit

var isLog = true
var n = 100      // 총길이
var m = 5       // 사람수

// 초기 세팅
var arrMain = Array<Int>()
var arrTemp = Array<Int>()
arrMain.append(n)

if isLog {print("0 \(arrMain.description)")}

for i in 0 ..< n {
    var mCnt = m
    var end = true
    
    // 자르고 넣기
    for j in 0 ..< arrMain.count {
        if (mCnt != 0 && arrMain[j] > 1) {
            //if isLog {print("!\(j+1) \(arrMain[j])")}
            // 나눠서 담기
            let val1 = arrMain[j] / 2;
            let val2 = arrMain[j] - val1;
            arrTemp.append(val1)
            arrTemp.append(val2)
            // 사람 줄이기
            mCnt -= 1
            // 종료 체크 (나눳지만 또 나눌것)
            if (val1 > 1 || val2 > 1) {
                end = false
            }
        }
        else {
            //if isLog {print("\(j+1) \(arrMain[j])")}
            // 사람이 없거나 나눌수 없으면 그냥 담기
            arrTemp.append(arrMain[j])
            // 종료 체크 (사람이 없어서 못나눈것)
            if (arrMain[j] > 1) {
                end = false
            }
        }
    }

    if isLog {print("\(i+1) \(arrTemp.description)")}
    // 새로 잘라진 상태 갱신
    arrMain = arrTemp;
    arrTemp = []
    
    // 더이상 자르지 못하면 종료
    if (end == true) {
        print("\(i+1) times \(arrMain.count)")
        
        break;
    }
    
}








