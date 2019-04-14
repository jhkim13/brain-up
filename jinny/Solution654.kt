/**
 * Example:
 * var ti = TreeNode(5)
 * var v = ti.`val`
 * Definition for a binary tree node.
 * class TreeNode(var `val`: Int) {
 *     var left: TreeNode? = null
 *     var right: TreeNode? = null
 * }
 */
class Solution {
    fun constructMaximumBinaryTree(nums: IntArray): TreeNode? {
        if(nums.size == 0) {
            return null
        }
        // var max = nums.max()!!
        // System.out.println(max)
        // System.out.println(nums.size)
        // System.out.println(nums.indexOf(max)!!)
        // System.out.println(nums.slice(0..2))
        return binaryTree(nums, 0, nums.size)
    }
    
    fun binaryTree(nums: IntArray, start: Int, end: Int): TreeNode? {
// System.out.println("$start , $end")
        if(start == end) {
            return null
        }
        var max = nums.sliceArray(start..end - 1).max()!!
        var end1 = nums.indexOf(max)!!
//        var left = nums.sliceArray(0..end1-1)
//        var right = nums.sliceArray(end1..nums.size)
        // System.out.println("max=$max , $end1")
        var result = TreeNode(max)
        result.left = binaryTree(nums, start, end1)
        result.right = binaryTree(nums, end1 + 1, end)
        
        return result
    }
}
