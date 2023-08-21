impl Solution {
    pub fn reverse_string(s: &mut Vec<char>) {
        if s.len() <= 1 {
            return;
        }

        let mut left = 0;
        let mut right = s.len() - 1;

        while left <= right {
            let tmp = s[right];
            s[right] = s[left];
            s[left] = tmp;


            left += 1;
            right -= 1;
        }
    
    }
}