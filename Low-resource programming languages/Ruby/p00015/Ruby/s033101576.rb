n = gets.to_i
n.times {
a = gets.to_i
b = gets.to_i
c = a+b
c = c.to_s
if c.length >= 80 
puts "overflow"
else
puts c
end
}