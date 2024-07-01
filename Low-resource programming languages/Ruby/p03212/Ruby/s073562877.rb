n = gets.chomp.to_i
num_of_digit = n.to_s.size

ans = num_of_digit.times.inject(0) do |sum, i|
  list = make_n_753(i + 1)
  cnt = list.count do |num|
    num = num.flatten
    num.uniq.size == 3 && num.join.to_i <= n
  end
  sum + cnt
end

puts ans