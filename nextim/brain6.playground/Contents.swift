import UIKit

func collatz(num: Int) -> Int {
    if (num % 2) == 0 {
        // even
        return num / 2
    }
    else {
        // odd
        return num * 3 + 1
    }
}

func routine(num: Int) -> Bool {
    var val = num * 3 + 1
    
    while val != 1 {
        //print(val)
        val = collatz(num: val)
        if val == num {
            return true
        }
    }
    
    return false
}

func main() {
    var cnt = 0
    
    for i in stride(from: 2, through: 10000, by: 2) {
        //print(i)
        if routine(num: i) {
            cnt += 1
        }
    }
    
    print("result = \(cnt)")
}

main()
