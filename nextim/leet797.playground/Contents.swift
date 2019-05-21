import UIKit

class Solution {
    var mAllPaths = Array<[Int]>()
    
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        
        findPath(graph: graph, node: graph[0], path: [0])
        
        return mAllPaths
    }
    
    func findPath(graph: [[Int]], node: [Int], path: [Int]) {
        if node.count == 0 {
            // 경로 없음
            mAllPaths.append(path)
        }
        else if node.count > 0 {
            for i in 0 ..< node.count {
                // 노드안에 경로 가져오기
                let nodeNumber = node[i]
                // 해당 경로의 노드 가져오기
                let subNode = graph[nodeNumber]
                // 경로 추가
                var newPath = Array<Int>(path)
                newPath.append(nodeNumber)
                
                findPath(graph: graph, node: subNode, path: newPath)
            }
        }
        else { //nodes == nil
        }
        
        return
    }
}

let solution = Solution()

solution.allPathsSourceTarget([[1,2], [3], [3], []])
//solution.allPathsSourceTarget([[1,2], [4], [3,4], [4], []])

print(solution.mAllPaths.description)

