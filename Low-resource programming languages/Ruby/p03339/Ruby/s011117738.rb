n = gets.to_i
a = gets
a = a.split("")
b = Array.new(n)
for i in 0..(n-1) do
  moveCount = 0
  for j in 0..(i-1)
    if a[j] == "W"
      moveCount += 1
    end
  end
  for j in (i+1)..(n-1)
    if a[j] == "E"
      moveCount += 1
    end
  end
  b[i] = moveCount
end

p b.min