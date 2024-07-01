def partial_sum(arr)
  s = 0
  arr.map do |elt|
    s += elt
  end
end

n = gets.to_i
s = gets.chomp.chars

sum_w = partial_sum(s.map { |c| c == 'W' ? 1 : 0 })
sum_e = partial_sum(s.map { |c| c == 'E' ? 1 : 0 }.reverse).reverse

puts 0.upto(n-1).map { |i| sum_w[i] + sum_e[i] }.min - 1
