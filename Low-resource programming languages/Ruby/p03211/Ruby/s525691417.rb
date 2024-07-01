S = gets.chomp
s = S.split('').map(&:to_i)
a = Array.new
for i in 0..S.length-3
    a[i] = (100 * s[i] + 10 * s[i+1] + s[i+2] - 753).abs
end

puts a.min