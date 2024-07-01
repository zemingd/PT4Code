n = gets.to_i
s = gets.chomp
ret = 0
n.to_i.times do |i|
  next if i == 0
  join = s[0,i].split('').uniq & s[i, s.size].split('').uniq
  ret = [ret, join.size].max
end
puts ret
