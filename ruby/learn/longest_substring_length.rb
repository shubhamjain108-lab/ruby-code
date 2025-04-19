def length_of_longest_substring(s)
  char_map = {}
  left = 0
  max_length = 0

  s.chars.each_with_index do |char, right|
    if char_map.key?(char) && char_map[char] >= left
      left = char_map[char] + 1
    end

    char_map[char] = right
    max_length = [max_length, right - left + 1].max
  end

  max_length
end

input = 'abcabcbd'
p length_of_longest_substring(input)
