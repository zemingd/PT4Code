N,K = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

N_s = N.sort!
l_total = 0

K.times do |i|
    l_total += N_s[i]
end

puts l_total