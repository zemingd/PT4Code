require 'bigdecimal'
ans = BigDecimal("1")
n = gets.chomp.to_i
ary1 = gets.chomp.split(" ")
n.times do |i|
  ans = ans * BigDecimal(ary1[i])
  if ans > 10**18
    ans = -1
    break
  end
end

puts sprintf("%i",ans)
