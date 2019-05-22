/**
 * @param {character[][]} board
 * @return {number}
 */
var countBattleships = function(board) {
  let rowLen = board.length;
  let colLen = board[0].length;
  console.log(board, rowLen, colLen);

  // Array<{ row: number, col: number }>
  let xArray = [];

  for (let i=0; i<rowLen; i++) {
    for(let j=0; j<colLen; j++) {
      if (check(i, j, board))
        xArray.push({ row: i, col: j });
    }
  }
  console.log(xArray);
};

function check(row, col, board) {
  let str = board[row][col];
  
  if (str === '.') {
    return false;
  } else if (str === 'X') {
    return true;
  }
}

countBattleships([["X",".",".","X"],[".",".",".","X"],[".",".",".","X"]]);