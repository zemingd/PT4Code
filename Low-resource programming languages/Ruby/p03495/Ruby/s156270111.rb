N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
HH = Hash.new(0)

A.each do |a|
    HH[a] += 1
end
NUMS = HH.values.sort[0, HH.size - K]

puts NUMS ? NUMS.inject(:+) : 0