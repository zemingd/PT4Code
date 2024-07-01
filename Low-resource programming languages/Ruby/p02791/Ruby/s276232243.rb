N = gets.to_i
P = gets.split.map(&:to_i)
count = 0

1.upto(N - 1) do |i|
  (0..i).each do |j|
    if P[i] > P[j]
      count += 1
      break
    end
  end
end

puts N - count