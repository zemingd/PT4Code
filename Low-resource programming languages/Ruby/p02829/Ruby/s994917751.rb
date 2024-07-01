def f n
  n.step(1, -2).inject(:*) || 1
end

puts f(gets.to_i).reverse.index(/[1-9]/)