n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
ans = 0
a.each do |len|
    h[len] += 1
end
h = h.select{|key, value| value >= 2}.sort{|a, b| a[0] <=> b[0]}
ans = h.size >= 2 ? h[-1][0] * h[-2][0] : 0
puts ans