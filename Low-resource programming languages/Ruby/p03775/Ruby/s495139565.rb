n = gets.to_i
f = -> (a, b) { a.to_s.length < b.to_s.length ? b.to_s.length : a.to_s.length }
min_f = Float::INFINITY

1.upto(Math.sqrt(n).ceil) do |i|
  if n % i == 0
    larger_digit = f.call(i, n / i)
    min_f = larger_digit if larger_digit < min_f
  end
end

puts min_f