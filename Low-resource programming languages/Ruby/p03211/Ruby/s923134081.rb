s = gets.chomp.chars

ans = 999
s.each_cons(3) do |x|
  x = x.join.to_i
  diff = (x - 753).abs

  ans = diff if diff <= ans
end

puts ans
