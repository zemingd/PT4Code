array = gets.split.map{|a|a.to_i}
a,b = array[0], array[1]
if b%a == 0
  puts a+b
else
  puts b-a
end
