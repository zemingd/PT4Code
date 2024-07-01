N, M = gets.split(" ").map(&:to_i)

maxL = 1
minR = N
M.times do
  l, r = gets.split(" ").map(&:to_i)
  maxL = [maxL, l].max
  minR = [minR, r].min
end

puts (minR - maxL + 1)
