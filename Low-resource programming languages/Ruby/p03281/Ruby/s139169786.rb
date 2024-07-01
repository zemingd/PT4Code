N = gets.to_i
count = 0
res = 0

for i in  1..N do
  if i % 2 == 1
    for j in  1..i do
      if i % j == 0
        count += 1
      end
    end
  end
  if count == 8
    res += 1
  end
  count = 0
end

p res