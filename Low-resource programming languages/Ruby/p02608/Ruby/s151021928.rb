n = gets.chomp.to_i

counts = Array.new(n, 0)
for i in 1...100 do
  for j in i...100 do
    for k in j...100 do
      n1 = i * i + j * j + k * k +
           i * j + j * k + k * i
      break if n1 > n
      gain = 1
      if i == j
        if j == k
          gain = 1
        else
          gain = 3
        end
      else
        if j == k
          gain = 3
        else
          gain = 6
        end
      end
      counts[n1 - 1] += gain
    end
  end
end

puts counts
