n = gets.chomp.to_i(10)

for i in 0... n

x = gets.chomp.to_i(10)
x += gets.chomp.to_i(10)
x = x.to_s(10)

if x.length > 80 then
puts "overflow"
else
puts x
end
end