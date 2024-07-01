require 'bigdecimal'
require 'bigdecimal/util'
_ = gets.chomp
l = gets.chomp.split(" ").map(&:to_i)
list = l.dup.map(&:to_d)

result = l.select.with_index do |num, i|
  ret = true
  list.each_with_index do |n2, j|
    next if i == j
    next if n2.nil?
    next if num < n2
    ans = num / n2
    next unless ans.to_i == ans
    ret = false
    break
  end  
  list[i] = nil unless ret
  next ret
end

puts result.length
