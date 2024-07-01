n = gets.to_i
s = {}
n.times do
  _sort = gets.chomp.chars.sort.join
  s[_sort] = 0 if s[_sort].nil?
  s[_sort] += 1
end
ans = 0
s.each do |str, num|
  ans += num * (num-1) / 2
end
puts ans