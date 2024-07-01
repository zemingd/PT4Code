n = gets.to_i
min_f = Float::INFINITY

1.upto(Math.sqrt(n).ceil) do |i|
  if n % i == 0
    larger_digit = i.to_s.length < (n / i).to_s.length ? (n / i).to_s.length
                                                       : n.to_s.length
    min_f = larger_digit if larger_digit < min_f
  end
end

puts min_f