require 'set'
arr = [[1, 2], [2, 4], [5, 6]]

result = arr.flat_map(&:itself).uniq

p result


p arr.flatten.uniq

s = Set.new

def arr_flatten(arr, s = [])
  arr.each do |num|
    if num.is_a?(Array)
      arr_flatten(num, s)
    else
      s.add(num)
    end
  end
  s.to_a
end

p arr_flatten(arr, s)


def deep_hash(hash, a = [], seen = {})
  case hash
  when Hash
    hash.each_with_object(a) { |(k, v), a| deep_hash(v, a, seen) }
  when Array
    hash.each_with_object(a) { |v, a| deep_hash(v, a, seen) }
  else
    unless seen[hash]
      a << hash
      seen[hash] = true
    end
  end
end


input = {
 "a" =>1,
 "b" => { "c" => [1, 2, 4] },
 "d" => [4, 5],
 "k" =>6,
 "f" => { "g" => { "h" => [7, 8, 9] } }
}

p deep_hash(input)

input = { a: 1, b: { c: [1, 2], d: { e: [3, 4] } }, f: [] }

def deep_hash_key(hash, a = [])
  hash.each do |k, v|
    a << k if v.is_a?(Array)
    deep_hash_key(v, a) if v.is_a?(Hash)
  end
  a
end

p deep_hash_key(input)

def deepest_key(hash, depth = 0)
  max = { key: nil, depth: depth }

  hash.each do |k, v|
    if v.is_a?(Hash)
      result = deepest_key(v, depth + 1)
      max = result if result[:depth] > max[:depth]
    else
      max = { key: k, depth: depth } if depth >= max[:depth]
    end
  end

  max
end

input = { a: { b: { c: { d: 5 } } }, e: { f: { g: { h: { i: 6, j: { k: 10 } } } } } }
puts deepest_key(input)[:key]
