k = gets.to_i#chomp.split.map(&:to_i)

count = 0

while count < k
  if k % 2 == 0
    count += 1
  end
end

puts count