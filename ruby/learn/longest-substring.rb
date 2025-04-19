def longest_substring(s)
  seen = {}
  left = 0
  max_length = 0
  start_index = 0

  s.chars.each_with_index do |char, right|
    if seen.key?(char) && seen[char] >= left
      left = seen[char] + 1
    end

    seen[char] = right

    if (right - left + 1) > max_length
      max_length = right - left + 1
      start_index = left
    end
  end
  p max_length

  p start_index

  p s[3, 4]
  s[start_index, max_length]
end

# Example Inputs
#puts longest_substring("abcabcbd")   # Output: "abc"
puts longest_substring("abcabcd")    # Output: "abcd"
#puts longest_substring("bbbbb")      # Output: "b"
#puts longest_substring("pwwkew")     # Output: "wke"
