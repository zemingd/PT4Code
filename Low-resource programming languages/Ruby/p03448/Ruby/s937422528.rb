a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

for a_count in 0..a do
  for b_count in 0..b do
    for c_count in 0..c do
      count += 1 if a_count * 500 + b_count * 100 + c_count * 50 == x
    end
  end
end

puts count