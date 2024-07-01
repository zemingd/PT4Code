N, K = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)

Nsort = N.sort{|a,b| b<=>a}
total = 0

K.times do |i|
    total += Nsort[i]
end

puts total