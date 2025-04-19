def deep_flatten(hash, prefix = "")
  hash.each_with_object({}) do |(key, value), result|
    new_key = prefix.empty? ? key.to_sym : "#{prefix}_#{key}".to_sym

    if value.is_a?(Hash)
      result.merge!(deep_flatten(value, new_key))
    else
      result[new_key] = value
    end
  end
end

input = { a: { b: { c: 42, d: "abc" }, d: "ddd" }, e: "ccc" }
output = deep_flatten(input)

puts output
