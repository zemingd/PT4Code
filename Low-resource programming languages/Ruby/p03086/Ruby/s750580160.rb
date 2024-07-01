b = gets.chomp

D = ["A", "T", "G", "C"]

max = 0
count = 0

for i in 0..(b.length-1) do
  for j in 0..3 do
    if b[i] == D[j]
      count += 1
      if max < count
        max = count
      end
      break
    end

    if j == 3
      count = 0
    end
  end
end

puts max
