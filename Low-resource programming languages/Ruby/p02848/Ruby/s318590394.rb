n = gets.to_i
s = gets.chomp
a = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
t = ""
for i in 0...(s.length) do
  t[i] = a[a.index(s[i]) + n]
end
puts t
