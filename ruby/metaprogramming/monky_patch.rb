p "abc".reverse

#p "abc".jain

class String
  def reverse
    "override"
  end

  def method_missing(method, *args)
    puts "You called: #{method}(#{args.join(', ')})"
    p "#{args}"
    puts "(You also passed it a block)" if block_given?
  end
end

p "abc".jain("abcd")
p "abc".reverse
