def deep_hash(input, key = "")
  input.each_with_object({}) do |(k, v), result|
    new_key = key.empty? ? k.to_sym : "#{key}_#{k}".to_sym
    case v
    when Hash
      result.merge!(deep_hash(v, new_key))
    else
      result[new_key] = v
    end
  end
end

input  = { a: { b: { c: 42, d: "abc" }, d: "ddd" }, e: "ccc" }

p deep_hash(input)
