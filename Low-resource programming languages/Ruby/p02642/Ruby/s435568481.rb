N = gets.to_i
A = gets.split.map(&:to_i).sort

b = Array.new(2 * (10 ** 5) + 1, 0)

A.each do |a|
  if b[a] == 2
    next
  end
  a.step(2 * (10 ** 5), a) do |i|
    b[i] += 1
  end
end

puts A.select {|a| b[a] == 1 }.size