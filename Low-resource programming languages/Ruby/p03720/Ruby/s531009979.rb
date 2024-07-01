N, M = gets.split.map(&:to_i)

degrees = Array.new(N + 1, 0)

M.times do
  a, b = gets.split.map(&:to_i)

  degrees[a] += 1
  degrees[b] += 1
end

degrees[1..N].each do |v|
  puts v
end
