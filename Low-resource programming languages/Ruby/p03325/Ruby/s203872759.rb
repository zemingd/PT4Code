number = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
count = 0

for i in 0..number - 1
  while array[i] % 2 == 0
    count += 1
    array[i] /= 2
  end
end

print count
