s = gets.chomp.bytes.sort
t = gets.chomp.bytes.sort.reverse
ans = 'No'
[s.size, t.size].max.times do |i|
  if s[i].nil?
    ans = 'Yes'
    break
  elsif t[i].nil?
    break
  elsif s[i] < t[i]
    ans = 'Yes'
    break
  elsif s[i] > t[i]
    break
  end
end
puts ans