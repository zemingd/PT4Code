a, op, b= gets.strip.split(' ')
puts a.to_i.method(:"#{op}").call(b.to_i)