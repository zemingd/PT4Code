require 'prime'
x = gets.chomp.to_i

while !(Prime.prime?(x))
    x+=1
end

puts x