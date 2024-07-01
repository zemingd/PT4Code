N, M = gets.split.map(&:to_i)
cross = (1..M).to_a
N.times do
  ary = gets.split.map(&:to_i)
  if ary.first == 0
    cross = []
    break
  end
  cross &= ary[1..-1]
end
puts cross.length
