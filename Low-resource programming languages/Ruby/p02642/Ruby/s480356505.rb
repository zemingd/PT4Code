require 'bigdecimal'
require 'bigdecimal/util'
_ = gets.chomp
l = gets.chomp.split(" ").map(&:to_i)
l = l.sort
list = l.dup.map(&:to_d)
divisible_list = []

not_divisible_list = l.select.with_index do |num, i|
  not_divisible = true
  next false if divisible_list.index(num)
  list.each_with_index do |n2, j|
    next if i == j
    next if n2.nil?
    next if num < n2
    ans = num / n2
    next unless ans.to_i == ans
    not_divisible = false
    break
  end

  unless not_divisible
    list[i] = nil
    divisible_list << num
  end
  next not_divisible
end

puts not_divisible_list.length
