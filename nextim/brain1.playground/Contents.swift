import UIKit

for num in stride(from:10, through:10000, by:1) {
    let num10 = String(num)
    let num8 = String(num, radix: 8, uppercase: true)
    let num2 = String(num, radix: 2, uppercase: true)
    
    if (String(num10.reversed()) == num10
        && String(num8.reversed()) == num8
        && String(num2.reversed()) == num2) {
        print(num, num8, num2)
    }
}

