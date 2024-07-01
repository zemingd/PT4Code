n = gets.to_i
a = gets.to_s

index = 1
count = 0

a.split(' ').each do |s|
  if s.to_i == index
    index += 1
  else
    count += 1
  end
end
count = -1 if count == n
puts count
