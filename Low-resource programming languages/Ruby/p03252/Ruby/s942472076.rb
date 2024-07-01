s = gets.chomp.split("")
t = gets.chomp.split("")
a = s.uniq
b = t.uniq
ans = "No"
if a.size == b.size
  a.size.times do |i|
    c = s.size.times.select{ |j| s[j] == a[i]}
    d = t.size.times.select{ |k| t[k] == b[i]}
    if c != d
      break
    end
  end
  ans = "Yes"
end
puts ans
