s = gets.rstrip
a = "10" * ((s.size/2).to_i + 1)
b = "01" * ((s.size/2).to_i + 1)
if s.size%2 == 1
  a.chop!
  b.chop!
end

a_count, b_count = 0, 0
0.upto(s.size-1) do | i |
  a_count += 1 if s[i] != a[i]
  b_count += 1 if s[i] != b[i]
end


puts a_count <= b_count ? a_count : b_count