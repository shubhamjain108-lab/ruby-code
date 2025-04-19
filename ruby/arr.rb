arr = [1,2,3,1,1,3,5,6,7,8,3,3,5,5,3,5,1]

p arr.tally.sort_by { |k, v| -v}

a = [1, nil]

p a.all?(Integer)
p a.any?

p (0..1).chain([2, 3, false, true]).to_a

b = [["shubham", "jain"]]

p b.flat_map { |fm| fm }


c = [:abc, "another_key", 4576]

p c.sort_by { |a| a.to_s.length }

d = "aabccccaadddeeeeefaaaa"

aa = d.chars.tally.sort_by { |k, v| -v}

len1 = aa[1][1]

p len1

p aa.select { |_, count| count == len1 }.map(&:first)

lo = nil

p lo&.name

[1,2,3,4].tap { |x| p x }

done = [1, 2, 2, 3, 4, 4, 5]

p done.tally.select { |_, count| count > 1}.keys

b1 = [["shubham", "jain"]]

p b1.flat_map(&:itself).sort


ar1 = [1,2,3,4]

p ar1.map { |num| num**2 }

p1 = [1, 2, 3, 4, 5, 6]

p p1.partition { |pa| pa > 4 }.flat_map(&:itself)

#p [].methods

p "".methods

[1,2,3,4].tap { |x| p x }
