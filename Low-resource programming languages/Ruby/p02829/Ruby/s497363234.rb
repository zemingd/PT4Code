def f n
  return 1 if n < 2
  return n * f(n - 2)
end

puts f(gets.to_i).to_s.reverse.index(/[1-9]/)