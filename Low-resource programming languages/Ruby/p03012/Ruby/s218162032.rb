n = gets.chomp.to_i
w = gets.chomp.split(' ').map(&:to_i)

s1 = 0
s2 = 0

n.times do
  if s1 <= s2
    s1 += w.shift
  else
    s2 += w.pop
  end
end

print((s1 - s2).abs)
