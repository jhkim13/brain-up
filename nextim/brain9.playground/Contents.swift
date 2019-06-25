import UIKit

// 어디를 끊더라도 두 그룹중 한쪽은 남녀수가 달라지는 도착 순서를 구하시오
// 남자 1, 여자 -1
let man = 20     //20
let woman = 10   //10

func main() {
    // 남녀 순서 케이스 이중 배열
    var arrLines = Array<Array<Int>>.init()
    
    // 첫번째 분기 값 입력
    arrLines.append(Array.init(arrayLiteral: 1))    // 남자 시작 케이스
    arrLines.append(Array.init(arrayLiteral: -1))   // 여자 시작 케이스
    
    for i in 0 ..< man + woman - 1  // 두번째 부터 시작 0부터 전체사람수에서 한명뺀수 (남자+여자-1)
    {
        print("cnt \(i) : case \(arrLines.count)")
        
        // 기존 값을 분기 (신규 배열 값 추가, 기존 배열 값 추가)
        for j in 0 ..< arrLines.count {
            var totMan = 0      // 전체 남자수 (남자수 초과 방지)
            var totWoman = 0    // 전체 여자수 (여자수 초과 방지)
            var totSame = 0     // 사람을 더해가면서 (0이면 짝이됨, 0이 아니면 짝이 안됨)
            
            // 순서 케이스를 처음부터 스캔하면서 짝이 되는 값이 있는지 체크
            for k in 0 ..< arrLines[j].count {
                let person = arrLines[j][k]
                
                // 짝이 되는 값이 있는지 체크 - 짝이되면 다음 케이스를 위해서 루프 빠짐
                totSame = totSame + person
                if totSame == 0 && k < 30 {
                    break
                }
                else {
                    // 남자면 남자 증가, 여자면 여자 증가
                    if person == 1 {
                        totMan += 1
                    }
                    else {
                        totWoman += 1
                    }
                }
            }
            
            // 마지막까지 또는 중간에 짝이 되는 케이스가 있다면 다음 케이스로 넘어감
            if totSame == 0 {
                continue
            }
            
            // 짝이 안되는 케이스라면 인원 추가
            if (totMan >= man) {
                // 완료되기전에 남자수가 다 찼으면 여자만 추가 (남녀 제한)
                arrLines[j].append(-1)
            }
            else if (totWoman >= woman) {
                // 완료되기전에 여자수가 다 찼으면 남자만 추가 (남녀 제한)
                arrLines[j].append(1)
            }
            else {
                // 둘다 추가
                var arTmp = arrLines[j]     // 케이스 복제
                arTmp.append(1)             // 남자 추가
                arrLines.append(arTmp)      // 생성된 신규 케이스 배열 추가
                
                arrLines[j].append(-1)      // 기존 케이스에 여자 추가
            }
            
            //print("case \(arrLines[j])")
        }
    }
    
    print("total case \(arrLines.count)")
    
    var tot = 0
    
    for j in 0 ..< arrLines.count {
        // 최종 완성된 케이스만 계산
        if (arrLines[j].count == man + woman) {
            var totSameReverse = 0 // 사람을 더해가면서 (0이면 짝이됨, 0이 아니면 짝이 안됨)
            
            // 순서 케이스를 뒤로부터 스캔하면서 짝이 되는 값이 있는지 체크
            for k in stride(from: arrLines[j].count - 1, through: 0, by: -1) {
                let person = arrLines[j][k]
                
                // 짝이 되는 값이 있는지 체크 - 짝이되면 다음 케이스를 위해서 루프 빠짐
                totSameReverse = totSameReverse + person
                if totSameReverse == 0 {
                    break
                }
            }
            
            // 마지막까지 또는 중간에 짝이 되는 케이스가 있다면 다음 케이스로 넘어감
            if totSameReverse == 0 {
                continue
            }
            else {
                tot += 1
            }
        }
    }
    
    print("\(tot)")
}

main()
