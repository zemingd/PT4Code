n = gets.to_i
p = gets.split.map(&:to_i)

p.each_with_index do |n, i|
  if n != i + 1
    tmp = p.find_index(i + 1)
    p[i] = i + 1
    p[tmp] = n
    break
  end
end

puts p == (1..n).to_a ? 'YES' : 'NO'