s = gets.chomp
n = s.size
ok = true
(n/2).times do |i|
    ok = false if s[i*2,2] != "hi"
end
puts (ok && n.even? ? "Yes" : "No")