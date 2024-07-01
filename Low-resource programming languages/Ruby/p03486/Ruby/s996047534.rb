s = gets.chomp.chars.sort
t = gets.chomp.chars.sort{|a, b| b <=> a}
f = false
([s.size, t.size].max).times do |i|
  if s[i].nil?
    f = true
    break
  elsif t[i].nil?
    break
  elsif s[i] > t[i]
    break
  elsif s[i] < t[i]
    f = true
    break
  end
end
puts (f ? "Yes" : "No")