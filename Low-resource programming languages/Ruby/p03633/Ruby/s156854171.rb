N = gets.to_i
T = readlines.map(&:to_i).sort.uniq
max = T.pop
ans = 1
max.step(by: max) do |i|
  if T.all? { i % _1 == 0 }
    ans = i.to_i
    break
  end
end
puts ans