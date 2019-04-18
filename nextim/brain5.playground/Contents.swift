import UIKit

var coin10 = 10
var coin50 = 50
var coin100 = 100
var coin500 = 500

var money = 1000

var coin10Cnt = money / coin10
var coin50Cnt = money / coin50
var coin100Cnt = money / coin100
var coin500Cnt = money / coin500

var totalCnt = 0

for i in stride(from: 0, through: coin500Cnt, by: 1) {
    let total1 = i * coin500
    
    if (total1 == money) {
        totalCnt += 1
        print("[\(totalCnt)] 500*\(i)")
        break
    }
    else if (total1 >= money) {
        print("500 error!")
        break
    }
    
    for j in stride(from: 0, through: coin100Cnt, by: 1) {
        let total2 = total1 + j * coin100
        
        if (total2 == money) {
            totalCnt += 1
            print("[\(totalCnt)] 500*\(i) 100*\(j)")
            break
        }
        else if (total2 >= money) {
            print("100 error!")
        }
        
        for k in stride(from: 0, to: coin50Cnt, by: 1) {
            let total3 = total2 + k * coin50
            
            if (total3 == money) {
                totalCnt += 1
                print("[\(totalCnt)] 500*\(i) 100*\(j) 50*\(k)")
                break
            }
            else if (total3 >= money) {
                print("error!")
            }

            for l in stride(from: 0, to: coin10Cnt, by: 1){
                let total4 = total3 + l * coin10
                
                if (total4 == money) {
                    totalCnt += 1
                    print("[\(totalCnt)] 500*\(i) 100*\(j) 50*\(k) 10*\(l)")
                    break
                }
                else if (total4 >= money) {
                    print("error!")
                }
            }
        }
    }
}

