hash1 = { a: 10, b: 20, c: 30 }
hash2 = { b: 15, c: 25, d: 40 }

p hash1.merge(hash2) { |_, v, n| v + n }

hash = { a: 1, b: 2, c: 3 }

p hash.invert

hash = { apple: 10, banana: 25, cherry: 15 }

p hash.max

array = [[:a, 1], [:b, 2], [:c, 3]]

p array.to_h

newhash = array.each_with_object({}) do |(k, v), result|
  result[k] = v
end

p newhash

hash = { a: 5, b: 15, c: 8, d: 20 }

p hash.select { |k, v| v >= 10}

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p numbers.group_by { |n| n.even? ? :even : :odd }

hash = { a: 3, b: 1, c: 2 }

p hash.sort_by { |k, v| v }.to_h
p hash.sort_by { |k, v| -v }.to_h


data = { user: { profile: { age: 30 } } }

p data[:user][:profile][:age]

p data.dig(:user, :profile)

hash1 = { a: 1, b: 2, c: 3 }
hash2 = { b: 4, c: 5, d: 6 }

p hash1.keys | hash2.keys


hash = { a: 1, b: 2, c: 1 }

h1 = hash.each_with_object(Hash.new("")) { |(k, v), h| h[v] += k.to_s }

p h1
