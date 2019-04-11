class Solution807 {
    fun maxIncreaseKeepingSkyline(grid: Array<IntArray>): Int {
        // 상하, 좌우에서 가장 높은 숫자들은 그대로
        val size: Int = grid.size
        var xs = IntArray(size)
        var ys= IntArray(size)
        var newGrid= Array<IntArray>(size, {IntArray(size)})
        
        System.out.println(newGrid.size)
        for(i in 0..size-1) {
            for(j in 0..size-1) {
                newGrid[i][j] = 0;
            }
        }
        for(i in 0..size-1) {
            var mX: Int = grid[i][0];
            var a: Int = 0;
            for(j in 0..size-1) {
                if(mX < grid[i][j]) {
                    mX = grid[i][j];
                    a = j;
                }
            }
            xs[i] = mX;
            newGrid[i][a] = mX;
            mX = 0;
        }
        
        for(i in 0..size-1) {
            var mY: Int = grid[0][i];
            var a: Int = 0;
            for(j in 0..size-1) {
                if(mY < grid[j][i]) {
                    mY = grid[j][i];
                    a = j;
                }
            }
            ys[i] = mY;
            newGrid[a][i] = mY;
            mY = 0;
        }
        
        for(i in 0..size-1) {
            for(j in 0..size-1) {
                if(newGrid[i][j] == 0) {
                    if(xs[i] >= ys[j]) {
                        newGrid[i][j] = ys[j];
                    }else{
                        newGrid[i][j] = xs[i];
                    }
                }
            }
        }
        
        var result:Int = 0;
        for(i in 0..size-1) {
            for(j in 0..size-1) {
                result += newGrid[i][j] - grid[i][j];
            }
        }
        return result;
    }
}