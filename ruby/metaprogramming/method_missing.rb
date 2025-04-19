class A
  def a
    p "a"
  end

  def b
    p "b"
  end

  def method_missing(name, *arg)
    p "#{name}"
  end
end

o = A.new

o.a
o.b
o.c
o.d
