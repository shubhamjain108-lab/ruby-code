input = "swiss"

p input.chars.tally.select { |_, v| v == 1 }.map(&:first)[0]

p input.chars.find { |c| input.count(c) == 1 }

p input.count("w")

str1 = "listen"
str2 = "silent"

p str1.chars.sort == str2.chars.sort

sentence = "ji hello world, lo"

p sentence.split.reverse.join(" ")

s = "Ruby is an amazing programming language is"

p s.split.max_by(&:length)

arr = [5, 1, 9, 3, 7, 9]

p arr.uniq.sort[-3]

n = 3
p arr.uniq.max(n)[n-1]

words = ["apple", "banana", "kiwi"]

p words.max_by(3) { |len| len.length }


people = [
  { name: "Alice", age: 30 },
  { name: "Bob", age: 25 },
  { name: "Charlie", age: 35 }
]

n = 2
p people.max_by(n) { |p1| p1[:age] }[n-1]

p people.min_by { |p1| p1[:name].length }

a11 = [1, 2, 3, 4, 5, 6]

p a11.select { |a| a.even? }

p1 = [1, 2, 3, 4]

p p1.map { |pm| pm * 2 }

sum = [1, 2, 3, 4]

p sum.inject(:+)

w = ["cat", "horse", "elephant", "dog"]

p w.find { |wc| wc.length > 5 }

wa = ["apple", "banana", "apple", "orange", "banana", "apple"]

p wa.tally

so = ["Alice", "Bob", "Charlie", "Dave"]

p so.sort_by { |sso| sso[-1] }
