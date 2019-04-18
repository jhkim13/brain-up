class Solution807 {
    public int maxIncreaseKeepingSkyline(int[][] grid) {
        // 상하, 좌우에서 가장 높은 숫자들은 그대로
        int[] xs = new int[grid.length];
        int[] ys = new int[grid.length];
        int[][] newGrid = new int[grid.length][grid.length];
        for(int i = 0; i < grid.length; i++) {
            for(int j = 0; j < grid.length; j++) {
                newGrid[i][j] = 0;
            }
        }
        for(int i = 0; i < grid.length; i++) {
            int mX = grid[i][0];
            int a = 0;
            for(int j = 0; j < grid.length; j++) {
                if(mX < grid[i][j]) {
                    mX = grid[i][j];
                    a = j;
                }
            }
            xs[i] = mX;
            newGrid[i][a] = mX;
            mX = 0;
        }
        
        for(int i = 0; i < grid.length; i++) {
            int mY = grid[0][i];
            int a = 0;
            for(int j = 0; j < grid.length; j++) {
                if(mY < grid[j][i]) {
                    mY = grid[j][i];
                    a = j;
                }
            }
            ys[i] = mY;
            newGrid[a][i] = mY;
            mY = 0;
        }
        
        for(int i = 0; i < grid.length; i++) {
            for(int j = 0; j <grid.length; j++) {
                if(newGrid[i][j] == 0) {
                    if(xs[i] >= ys[j]) {
                        newGrid[i][j] = ys[j];
                    }else{
                        newGrid[i][j] = xs[i];
                    }
                }
            }
        }
        
        int result = 0;
        for(int i = 0; i < grid.length; i++) {
            for(int j = 0; j < grid.length; j++) {
                result += newGrid[i][j] - grid[i][j];
            }
        }
        return result;
    }
}