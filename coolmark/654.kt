class Solution {
    fun constructMaximumBinaryTree(nums: IntArray): TreeNode? {
        if (nums.count() == 0) { return null }

        return insertTree(nums, 0, nums.count() - 1)
    }

    fun insertTree(nums: IntArray, start: Int, end: Int): TreeNode? {
        if (start == end) {
            val node = TreeNode(nums[start])
            return node
        }

        var r = start

        while (r < end && nums[start] > nums[r + 1]) {
            r += 1
        }

        if (r == end) {
            val node = TreeNode(nums[start])
            node!!.right = insertTree(nums, start + 1, end)
            return node
        }

        val node = insertTree(nums, r + 1, end)
        var leftEnd = node

        while (leftEnd != null && leftEnd.left != null) {
            leftEnd = leftEnd.left
        }

        leftEnd!!.left = insertTree(nums, start, r)

        return node
    }
}
