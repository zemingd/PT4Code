# coding: utf-8
line = gets
line.chomp!

/(\d+)\s+(\d+)/ =~ line
a = $1.to_i                        
b = $2.to_i

if (b % a == 0) then
  puts a+b
else
  puts b-a
end
