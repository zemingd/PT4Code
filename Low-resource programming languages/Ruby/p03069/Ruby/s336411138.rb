n = gets.to_i
ss = gets.chomp.chars
a = 0
n.times do |i|
  next if i == 0
  a += 1 if ss[i] != ss[i-1]
  ss[i] = ss[i-1]
end
puts a