s = gets.chomp

minval = 9999
for i in 0..s.length-3
    x = (s[i..i+2].to_i - 753).abs
    minval = x if x < minval
end
puts minval
