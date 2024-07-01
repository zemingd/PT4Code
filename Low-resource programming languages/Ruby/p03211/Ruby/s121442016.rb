s = gets.chomp
min = nil
for x in 0..(s.length - 3)
    str = s[x, 3].to_i
    abs = (str - 753).abs
    min = abs if min.nil? || min > abs
end
puts min