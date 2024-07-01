N, M, K =gets.chomp().split(" ").map(&:to_i)
A = gets.chomp().split(" ").map(&:to_i)
B = gets.chomp().split(" ").map(&:to_i)
count = 0
time = 0
while true do
  Atmp = A.shift
  Btmp = B.shift
  if Atmp == nil
    Atmp = Float::INFINITY
  end
  if Btmp == nil
    Btmp = Float::INFINITY
  end
  if Atmp > Btmp
    if K >= (time + Btmp)
      time += Btmp
      A.unshift(Atmp)
      count += 1
    else
      break
    end
  else
    if K >= (time + Atmp)
      time += Atmp
      B.unshift(Btmp)
      count += 1
    else
      break
    end
  end
end
print count