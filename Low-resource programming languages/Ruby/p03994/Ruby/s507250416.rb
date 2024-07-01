def diff_a(c)
  "z".ord + 1 - c.ord
end

s = gets.chomp
k = gets.to_i
n = s.size
n.times do |i|
  next if s[i] == "a" && i != n - 1
  d = diff_a(s[i])
  if i == n - 1
    s[i] = (97 + ((s[i].ord - 97) + k) % 26).chr
  elsif k >= d
    k -= d
    s[i] = "a"
  else
    next
  end
end
puts s
