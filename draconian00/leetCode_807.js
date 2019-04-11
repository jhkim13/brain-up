/**
 * @param {number[][]} grid
 * @return {number}
 */
var maxIncreaseKeepingSkyline = function(grid) {
    let gridLen = grid.length
    
    let vMaxArray = new Array(gridLen).fill(0);
    let sum = 0;
    
    for (let i=0; i<gridLen; i++) {
        let hMax = Math.max.apply(null, grid[i]);
        for (let j=0; j<gridLen; j++) {
            if (i === 0) {
                for (let k=0; k<gridLen; k++) {
                    vMaxArray[j] = Math.max(vMaxArray[j], grid[k][j]);
                }
            }
            
            let minOfMax = Math.min(hMax, vMaxArray[j]);
            let diffOfMin = minOfMax - grid[i][j];
            sum += diffOfMin;
        }
    }
    
    return sum;
};
