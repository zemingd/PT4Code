key = gets.chomp.to_s
n = gets.chomp.to_i
data = []
count = 0

for i in 0..n-1
  data[i] = gets.chomp.to_s
end

for i in 0..n-1
  check = data[i].include?(key)
  if check
    count = count + 1
  end
end

puts count

