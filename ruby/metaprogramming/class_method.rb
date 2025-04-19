module A
  def a
    "a"
  end
end

module B
  def self.b
    "b"
  end
end

class Test
  include A
  extend B
end

t = Test.new

p t.a
p B.b
