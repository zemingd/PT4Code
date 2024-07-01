N, K = gets.chomp.split(" ").map(&:to_i)
Length = gets.chomp.split(" ").map(&:to_i)

Nsort = Length.sort{|a,b| b<=>a}
total = 0

K.times do |i|
    total += Nsort[i]
end

puts total