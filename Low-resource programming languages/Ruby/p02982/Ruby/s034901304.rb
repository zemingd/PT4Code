jigen, ten = gets.split(' ').map(&:to_i)

ary = []
jigen.times do
  ary << gets.split(' ').map(&:to_i)
end

count = 0
ary.combination(2) do |ca|
  result = 0
  ca[0].each_with_index do |x, idx|
    t = (x - ca[1][idx]).abs
    result += t * t
  end
  sq = Math.sqrt(result)
  count += 1 if sq.to_i == sq
end

puts count
