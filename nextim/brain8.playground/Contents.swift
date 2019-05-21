import UIKit

var mArPaths : Array<CGPoint> = Array.init()
var moveCount = 3  // 12
var mPatternCnt = 0

func move(beforePos: CGPoint) {
    for direction in 0 ... 3 {
        var x = beforePos.x
        var y = beforePos.y
        
        switch direction {
        case 0:     // west wood
            x -= 1
            break
        case 1:     // south africa
            y += 1
            break
        case 2:     // east pak
            x += 1
            break
        case 3:     // north face
            y -= 1
            break
        default:
            break
        }
        
        let newPos = CGPoint.init(x: x, y: y)
        // 이미 지나간 경로인지 확인
        if mArPaths.contains(newPos) {
            continue
        }
        
        if mArPaths.count >= moveCount {
            // 이동 완료
            mPatternCnt += 1
            //print("\(mPatternCnt) \(mArPaths) \(newPos)")
            // 경로 패턴 찍기 (최소,최대 구해서 for문)
        }
        else {
            // 이동가능
            mArPaths.append(newPos)
            move(beforePos: newPos)
        }
    }
    
    mArPaths.removeLast()
    return
}

// 이동 패턴을 만든다.
func makePattern() {
    var pos : CGPoint
    // 시작 위치
    pos = CGPoint.init(x: 0, y: 0)
    mArPaths.append(pos)
    // 최초 이동 (4가지 케이스)
    pos = CGPoint.init(x: 0, y: 1)
    mArPaths.append(pos)
    // 경로 이동하기
    move(beforePos: pos)
    
    print("\(mPatternCnt)")
    print("\(mPatternCnt * 4)") // 4가지 케이스
}

makePattern()
