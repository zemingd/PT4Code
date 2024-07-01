s = gets.chomp.to_s
a = []
(s.size - 2).times do |i|
    a << s[i..i+2].to_i
end
print a.map{ |b| (b - 753).abs }.min