n, l = gets.chomp.split.map(&:to_i)
s = []
result = ""
for a in 0..n - 1
  s << gets.chomp
end
s.sort!
for b in 0..n - 1
  result = result + s[b]
end
puts result
