class A
  def a
    return "a"
  end
end

a1 = A.new
a2 = A.new

p a1.a

A.class_eval do
  def b
    return "b"
  end
end

p a1.b

a1.instance_eval do
  def c
    return "c"
  end
end

p a1.c

p a2.a
p a2.b
#p a2.c

a4 = A.new

a4.define_singleton_method("d") do |arg|
  return arg
end

p a4.d("lo")

#p a2.d("lo1")
