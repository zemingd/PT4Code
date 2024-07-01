io = STDIN
s=io.gets.chomp
t=io.gets.chomp
cnt = 0
3.times do |i|
  cnt += 1 if s[i]==t[i]
end
puts cnt
