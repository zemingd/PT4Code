s = gets.chomp
n = s.length
base = ["A", "G", "C", "T"]
ans = 0
cur = 0
n.times do |i|
  if base.include?(s[i])
    cur += 1
  else
    ans = [ans, cur].max
    cur = 0
  end
end
ans = [ans, cur].max
puts ans