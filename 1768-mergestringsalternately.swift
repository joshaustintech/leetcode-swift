class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var greatest = max(word1.count, word2.count)
        var result = ""
        for i in 0...greatest - 1 {
            if i <= word1.count - 1 {
                let index = word1.index(word1.startIndex, offsetBy: i)
                result += word1[index...index]
            }
            
            if i <= word2.count - 1 {
                let index = word2.index(word1.startIndex, offsetBy: i)
                result += word2[index...index]
            }
        }
        return result
    }
}