n = gets.chomp.to_i
s = gets.chomp

cnt = 0
(n - 1).times do |i|
  next if s[i] != '#'
  if s[i+1] == '.'
    cnt += 1
  end
end
puts cnt
