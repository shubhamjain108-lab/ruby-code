def deep_hash(input, result = [])
  case input
  when Hash
    input.each { |_, v| deep_hash(v, result) }
  when Array
    input.each { |v| deep_hash(v, result) }
  else
    result << input
  end
  result
end
input = {
 "a" =>1,
 "b" => { "c" => [1, 2, 4] },
 "d" => [4, 5],
 "k" =>6,
 "f" => { "g" => { "h" => [7, 8, 9] } }
}

p deep_hash(input)
