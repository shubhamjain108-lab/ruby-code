a = "aabbbcccccddeeef"
p a.chars.tally

a1 = [:abcd, "cavisson", 12345, "shubhamjain"]

a1 = a1.sort_by { |element| element.to_s.length}

p a1

a2 = "shubhamjain"

a2 = a2.chars.tally.sort_by { |k, v| -v}[0][0]

p a2

arr = [1, 2, 3, 4, 5, 6]
grouped = arr.group_by { |n| n.even? }
p grouped
