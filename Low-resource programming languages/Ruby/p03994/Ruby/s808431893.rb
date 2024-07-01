def diff_a(c)
  "z".ord + 1 - c.ord
end

s = gets.chomp
k = gets.to_i
n = s.size
res = ""
s.each_char.with_index do |c, i|
  if c == "a" && i != n - 1
    res << "a"
    next
  end
  d = diff_a(c)
  if i == n - 1
    res << (97 + ((c.ord - 97) + k) % 26).chr
  elsif k >= d
    k -= d
    res << "a"
  else
    res << c
    next
  end
end
puts res
