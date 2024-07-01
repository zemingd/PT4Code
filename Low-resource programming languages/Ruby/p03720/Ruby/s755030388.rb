N, M = gets.split.map(&:to_i)

nl = Hash.new(0)

M.times do
  a, b = gets.split.map(&:to_i)
  nl[a] += 1
  nl[b] += 1
end

N.times do |i|
  puts nl[i+1]
end
