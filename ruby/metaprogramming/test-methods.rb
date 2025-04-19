a = [].methods.grep /^re/

p a

p a.find { |k| k.to_s.length > 5 }
