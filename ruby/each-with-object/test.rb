keys = [:a, :b, :c]
default_key = 0

hash = keys.each_with_object({}) do |key, result|
  result[key] = default_key
end

p hash

words = ["apple", "banana", "apricot", "blueberry", "cherry"]

p words.group_by { |k, v| k[0]}

hash = words.each_with_object({}) do |key, result|
  char = key[0]
  result[char] ||= []
  result[char] << key
end

p hash

words = %w[apple banana apple cherry banana apple]

p words.tally

hash = words.each_with_object(Hash.new(0)) do |key, result|
  result[key] += 1
end

p hash

nested_array = [[1, 2], [3, 4], [5, 6]]

p nested_array.flat_map(&:itself)
p nested_array.flatten

hash = nested_array.each_with_object([]) do |key, result|
  result.concat(key)
end

p hash


grades = { alice: 92, bob: 92, charlie: 78, dave: 88 }

p grades.select { |k, v| v > 80}

arr = grades.sort_by { |_, v| -v }

p arr.select { |_, v| v == arr[0][1] }
hash = {}

#hash.store(arr[0], arr[1])

#p hash

#p arr

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p numbers.select(&:even?)

arr = numbers.each_with_object([]) do |num, result|
  result << num if num.even?
end

p arr

p numbers.partition(&:even?)
p numbers.group_by(&:even?)
