N, M = gets.chomp.split.map(&:to_i)

list = []

M.times do
  a, b = gets.chomp.split.map(&:to_i)
  list << [a, b]
end

list.sort_by!(&:last)

cut_point = 0
ans = 0

list.each do |a, b|
  if cut_point < a
    cut_point = b - 1
    ans += 1
  end
end

puts ans

