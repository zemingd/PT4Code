# coding: utf-8
a, b, c = gets.split.map {|e| e.to_i}

if Math.sqrt(a + b) < Math.sqrt(c)
  puts 'Yes'
else
  puts 'No'
end  