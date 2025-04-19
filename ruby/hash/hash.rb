def get_value(data, key)
  return data[key] if data.key?(key)

  data.each_value do |v|
    if v.is_a?(Hash)
      result = get_value(v, key)
      return result unless result.nil?
    end
  end
  nil
end

data = {
  user: {
    profile: {
      username: "coder123",
      email: "coder@example.com",
      arr: [1, 2, 3, 4]
    }
  }
}

p get_value(data, :email)
p get_value(data, :arr)
p data[:user][:profile][:email]
p data.dig(:user, :profile, :email)
