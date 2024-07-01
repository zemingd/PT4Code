DBG = !true
n,m = gets.split.map{|x| x.to_i}
x = gets.split.map{|x| x.to_i}
if n >= m
  puts "0"
  exit 0
end

x.sort!
mdif = []
for i in 0..(m-2)
  mdif << x[i+1] - x[i]
end
mdif.sort!
print mdif if DBG
ret = mdif[0...(m-n)].inject(:+)
puts "#{ret}"
