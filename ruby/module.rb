module A
  def a
    p "a"
  end
end

module B
  def b
    p "b"
  end
end

module C
  def c
    p "c"
  end
end

class Parent
  prepend A
  def d
    p "d"
  end
end

class Child < Parent
  include B
  include C
  def e
    p "e"
  end

  def method_missing(name, *arg, &block)
    p "#{name} missing method call"
  end

  def respond_to_missing?(method_name, include_private = false)
    p "#{method_name}"
  end
end

p Child.ancestors

c1 = Child.new

p c1.respond_to?(:f)
