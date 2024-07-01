N = gets.to_i
Xs = gets.split.map(&:to_i)

mid = Xs.inject(:+) / Xs.length + 1
res = 0

Xs.each do |point|
    res += (point - mid) ** 2
end

puts res
