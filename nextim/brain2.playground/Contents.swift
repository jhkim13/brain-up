import UIKit

let arOp = Array.init(arrayLiteral: "", "+", "-", "*", "/")

func opCase3(number: Int) {
    let strNum = String.init(number)
    let strNumR = String(strNum.reversed())
    
    let num1 = String(strNum[strNum.startIndex])
    let num2 = String(strNum[strNum.index(after: strNum.startIndex)])
    let num3 = String(strNum[strNum.index(strNum.startIndex, offsetBy: 2)])
    
    for op1 in stride(from: 0, to: 5, by: 1) {
        for op2 in stride(from: 0, to: 5, by: 1) {
            if op1 == 0 && op2 == 0 {
                break
            }
            
            let strExp = String.init(format: "%@%@%@%@%@", num1, arOp[op1], num2, arOp[op2], num3)
            let exp1 = NSExpression(format: strExp)
            let result = exp1.expressionValue(with: nil, context: nil) as? Int
            let strRet = String(result!)
            if (strRet == strNumR) {
                print(strNum + " : " + strExp + " = " + strNumR)
                return;
            }
        }
    }
}

func opCase4(number: Int) {
    let strNum = String.init(number)
    let strNumR = String(strNum.reversed())
    
    let num1 = String(strNum[strNum.startIndex])
    let num2 = String(strNum[strNum.index(after: strNum.startIndex)])
    let num3 = String(strNum[strNum.index(strNum.startIndex, offsetBy: 2)])
    let num4 = String(strNum[strNum.index(before: strNum.endIndex)])
    
    for op1 in stride(from: 0, to: 5, by: 1) {
        for op2 in stride(from: 0, to: 5, by: 1) {
            for op3 in stride(from: 0, to: 5, by: 1) {
                if op1 == 0 && op2 == 0 && op3 == 0 {
                    break
                }
                
                let strExp = String.init(format: "%@%@%@%@%@%@%@", num1, arOp[op1], num2, arOp[op2], num3, arOp[op3], num4)
                let exp1 = NSExpression(format: strExp)
                let result = exp1.expressionValue(with: nil, context: nil) as? Int
                let strRet = String(result!)
                if (strRet == strNumR) {
                    print(strNum + " : " + strExp + " = " + strNumR)
                    return;
                }
            }
        }
    }
}

for num in stride(from: 1000, to: 10000, by: 1) {
    
    //    opCase3(number: num)
    opCase4(number: num)
    
}

