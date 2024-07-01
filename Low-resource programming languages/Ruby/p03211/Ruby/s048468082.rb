ss = gets.chomp
n = ss.size
zt = []

for i in 0..n
    x = ss.slice(i,3).to_i
    y = (x - 753).abs
    zt << y
end

puts zt.min