s = gets.strip
m = (s[0..2].to_i - 753).abs
(3...s.size).each do |i|
    m = [(s[i-2..i].to_i - 753).abs, m].min
end
puts m
