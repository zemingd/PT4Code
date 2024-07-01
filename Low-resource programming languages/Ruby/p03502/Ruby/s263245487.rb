n = gets.chomp.to_s
result = ""
keta = n.length
fx = 0
keta.times{
    |i|
    fx += n[i].to_i
}
if( n.to_i % fx == 0 )
     result = "yes"
else
    result = "no"
end
puts result