/**
 * 문제:  807. Max Increase to Keep City Skyline
 *
 * 날짜 2019.03.30
 */

fun main(arsg: Array<String>) {

    var arr = arrayOf(intArrayOf(3,0,8,4),
            intArrayOf(2,4,5,7),
            intArrayOf(9,2,6,3),
            intArrayOf(0,3,1,0))
    val result = maxIncreaseKeepingSkyline(arr);
    println(result)
}

fun maxIncreaseKeepingSkyline(grid: Array<IntArray>): Int {
    var x = grid.size
    var y = grid[0].size

    var left = arrayOfNulls<Int>(x)
    var top = arrayOfNulls<Int>(y)

    var gridTotal = 0
    for(i in 0..x-1) {
        var xMax = -1
        var yMax = -1

        for(j in 0..y-1) {
            gridTotal += grid[i][j]

            if(xMax < grid[i][j]) {
                xMax = grid[i][j]
            }

            if(yMax < grid[j][i]) {
                yMax = grid[j][i]
            }
        }
        left[i] = xMax
        top[i] = yMax
    }

    var resultTotal = 0
    var resultArr = grid
    for(i in 0..x-1) {
       for (j in 0..y-1) {
           if(top[i]!! < left[j]!!) {
               resultArr[i][j] = top[i]!!
           } else {
               resultArr[i][j] = left[j]!!
           }
           resultTotal += resultArr[i][j]
       }
    }
    return resultTotal - gridTotal
}

