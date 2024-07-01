require 'bigdecimal'
require 'bigdecimal/util'
_ = gets.chomp
l = gets.chomp.split(" ").map(&:to_i)
l = l.sort

result = l.select.with_index do |num, i|
  ret = true
  l.each_with_index do |n2, j|
    next if i == j
    ans = num / n2.to_d
    next unless ans.to_i == ans
    ret = false
    break
  end
  next ret
end

puts result.length
