N, M = gets.split.map(&:to_i)
result = (1..M).to_a
N.times do
  _, *a = gets.split.map(&:to_i)
  result &= a
end
puts result.size
