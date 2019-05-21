/**
 * @param {number} num
 * @return {number[]}
 */
var countBits = function(num) {
  const resultArray = [];
  let power = 0;
  
  for (let i=0; i<=num; i++) {
      // const matchResult = i.toString('2').match(/1/g);
      // if (matchResult) {
      //     resultArray.push(matchResult.length);
      // } else {
      //     resultArray.push(0);
      // }
      
      if (i === 0) {
          resultArray.push(0);
      } else {
          if (i === 2**power) {
              resultArray.push(1);
              power++;
          } else {
              let idx = i - (2**(power-1));
              resultArray.push(1 + resultArray[idx]);
          }
      }
  }
  
  return resultArray;
};