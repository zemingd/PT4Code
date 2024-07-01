n = gets.chomp.to_i
tmp = (n/11)*2
flag = n%11
if 1<=flag && flag<=6
  tmp += 1
elsif flag>=7
  tmp += 2
end

puts tmp

