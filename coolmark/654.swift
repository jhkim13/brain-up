import Foundation

class Solution {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else { return nil }
        
        var head: TreeNode?
        
        for num in nums {
            head = insertNumber(head, num)
        }
        
        return head
    }
    
    func insertNumber(_ head: TreeNode?, _ num: Int) -> TreeNode? {
        guard let head = head else { return TreeNode(num) }
        
        if head.val > num {
            head.right = insertNumber(head.right, num)
            
            return head
        }
        
        let newNode = TreeNode(num)
        newNode.left = head
        
        return newNode
    }
}
