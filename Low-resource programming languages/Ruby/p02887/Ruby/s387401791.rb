n = gets.chop.to_i
s = gets.chop

ans = 0
tmp = ''

n.times do |i|
  if s[i] != tmp
    ans += 1
    tmp = s[i]
  end
end

p ans
