N, L = gets.chomp.split(" ").map(&:to_i)
sum = [*1..N].map{|v| L+v-1}.inject(:+)
res = L
(1..N).each do |i|
    res = L+i-1 if res.abs > (L+i-1).abs
end

puts sum-res