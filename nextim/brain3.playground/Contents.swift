import UIKit

var arr = Array(repeating: false, count: 100)   // 배열 초기화 선언
var jumpCnt = 0;

// 뒤집은게 있으면 다시 시도
while jumpCnt < 99 {
    jumpCnt += 1       // 건너뛰기 증가
    
    // 뒤집기 동작 close range
    for i in stride(from: jumpCnt, through: 100, by: jumpCnt + 1) {
        // 뒤집기
        arr[i] = !arr[i]
    }
}

// 안뒤집힌 카드 번호 출력 open range
for j in stride(from: 0, to: 100, by: 1) {
    if (arr[j] == false) {
        print(j + 1)
    }
}

