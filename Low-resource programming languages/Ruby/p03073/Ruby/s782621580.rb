s = gets.chomp
cnt = 0
s.length.times do |i|
  if s[i].to_i == i%2
    cnt += 1
  end
end
puts [cnt, s.length - cnt].min
