def diff_a(c)
  "z".ord + 1 - c.ord
end

s = gets.chomp
k = gets.to_i
n = s.size
s.each_with_index do |c, i|
  next if c == "a" && i != n - 1
  d = diff_a(c)
  if i == n - 1
    s[i] = (97 + ((c.ord - 97) + k) % 26).chr
  elsif k >= d
    k -= d
    s[i] = "a"
  else
    next
  end
end
puts s
