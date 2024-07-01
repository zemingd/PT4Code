require "bigdecimal"

n = STDIN.gets.to_i

n.times{
a = STDIN.gets
b = STDIN.gets
if(a.length > 81 || b.length > 81)
puts "overflow"
next
end
a = BigDecimal(a)
b = BigDecimal(b)
res = (a+b).to_s("F").split(".")[0]
if(res.length > 80)
puts "overflow"
next
end
puts res
}