x = gets.chomp.to_i
base = x/11*2
mod = x%11
if mod > 6
  puts base + 2
elsif mod > 0
  puts base + 1
else
  puts base
end
