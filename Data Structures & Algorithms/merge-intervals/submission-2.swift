class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervalsSorted = intervals.sorted {$0[0] < $1[0]}
        var result: [[Int]] = [intervalsSorted[0]]
        for interval in intervalsSorted.dropFirst() {
            let start = interval[0]
            let end = interval[1]
            if let last = result.last, start <= last[1] {
                var merged = result.removeLast()
                if end > merged[1] {
                    merged[1] = end }
                result.append(merged)
            } else {result.append(interval)}
            }
        return result

        }
    }

