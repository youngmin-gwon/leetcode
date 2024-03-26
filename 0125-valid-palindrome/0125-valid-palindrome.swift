import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "[^a-zA-Z0-9]+", options: .caseInsensitive)
            let result = regex.stringByReplacingMatches(in: s, options: [], range: NSRange(location: 0, length: s.utf16.count), withTemplate: "").lowercased()
            return result == String(result.reversed())
        } catch {
            return false
        }
    }
}
