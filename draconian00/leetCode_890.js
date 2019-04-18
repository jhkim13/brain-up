/**
 * @param {string[]} words
 * @param {string} pattern
 * @return {string[]}
 */
var findAndReplacePattern = function(words, pattern) {
  let returnArr = [];
  
  let pHash = {};
  let wHash = {};
  let reP = '';
  let reW = '';
  words.forEach(word => {
      pHash = {};
      wHash = {};
      reP = '';
      reW = '';
      for (let i=0; i<word.length; i++) {
          pHash[pattern.charAt(i)] = word.charAt(i);
          wHash[word.charAt(i)] = pattern.charAt(i);
      }
      for (let j=0; j<word.length; j++) {
          reP += wHash[word.charAt(j)];
          reW += pHash[pattern.charAt(j)];
      }
      
      if (reP === pattern && reW === word) {
          returnArr.push(word);
      }
  });
  
  return returnArr;
};
