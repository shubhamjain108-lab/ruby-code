def deep_flatten(arr, prefix = "")
  arr.each_with_object({}) do |(k, v), result|
    new_key = prefix.empty? ? k.to_sym : "#{prefix}_#{k}".to_sym

    if v.is_a?(Hash)
      result.merge!(deep_flatten(v, new_key))
    else
      result[new_key] = v
    end
  end
end

input = { a: { b: { c: 42, d: "abc" }, d: "ddd" }, e: "ccc" }

p deep_flatten(input)
