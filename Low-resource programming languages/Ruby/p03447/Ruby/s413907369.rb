a, b, c, x = 4.times.map { gets.to_i }
cnt = 0

for ia in 0..a do
  for ib in 0..b do
    for ic in 0..c do
      if x == ia*500 + ib*100 + ic*50
        cnt = cnt + 1
      end
    end
  end
end

puts cnt