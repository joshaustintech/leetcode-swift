class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let s = String(x)
        return s.elementsEqual(s.reversed())
    }
}