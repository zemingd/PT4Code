s = gets.chomp
t = gets.chomp
c1, c2 = {}, {}

s.size.times do |i|
  if c1[s[i]] == nil && c2[t[i]] == nil
    c1[s[i]] = t[i]
    c2[t[i]] = s[i]
  elsif c1[s[i]] != t[i] || c2[t[i]] != s[i]
    puts :No
    exit
  end
end
puts :Yes
