class MyClass
end

MyClass.instance_eval do
  def class_method
    "Hello from class method (instance_eval)!"
  end
end

puts MyClass.class_method
