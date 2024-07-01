s = gets.chomp
d=p
ans=0
s.chars.each do |c|
  ans += 1 if d!=c
  d = c
end
p ans