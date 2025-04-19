f = [1, [2, 3, [4, [5, 7]]], 6]

p f.flatten(1)

p f.flat_map(&:itself)

def flat_arr(f, result = [])
  f.each do |fa|
    fa.is_a?(Array) ? flat_arr(fa, result) : result << fa
  end
  result
end

p flat_arr(f)

a = [1, 2, 3, 4]

#s = ["apple", "banana", "cherry", "blueberry"]

s = "apple banana cherry blueberry"

p s.split.map(&:reverse).join(" ")

#p a.sort_by { |l| -l }

def arr_reverse(a)
  r = []
  a.each do |ea|
    r.unshift(ea)
  end
  r
end
p arr_reverse(a)
