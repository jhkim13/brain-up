let n:number = 1000
// const op: string[] = ['*', '/', '+', '-', ''];
const op: string[] = ['*', ''];

for (n; n < 10000; n++) {
  let str: string = n.toString();
  let evalStr: string = '';

  for (let i: number = 0; i < op.length; i++) {
    for (let j: number = 0; j < op.length; j++) {
      for (let k: number = 0; k < op.length; k ++) {
        evalStr = str.charAt(3) + op[i] + str.charAt(2) + op[j] + str.charAt(1) + op[k] + str.charAt(0);

        if (evalStr.length > 4) {
          if (n === eval(evalStr)) {
            console.log(evalStr, n);
          }
        }
      }
    }
  }
}