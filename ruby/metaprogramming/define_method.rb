class Test
  def print1
    p "print1"
  end

  define_method(:dynamic_print1) do |var|
    p "#{var}"
  end

  ["a", "b"].each do |dm|
    define_method("#{dm}?") do
      return dm
    end
  end
end

t = Test.new

t.print1
t.dynamic_print1("lo")
p t.a?
p t.b?
