def add_sub_mul(a, b)
  [a+b,a-b,a*b].max
end

(a,b) = gets.chomp.split.map(&:to_i)
puts add_sub_mul(a,b)
