K = gets.chomp.to_i

count = 0
for i in 1..(K - 1) do
  for j in (i+1)..K do
    count += 1 if i.odd? && j.even?
    count += 1 if i.even? && j.odd?
  end
end

puts count