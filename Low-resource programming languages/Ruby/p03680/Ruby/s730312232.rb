n = gets.to_i
a = []
n.times do
  a.push(gets.to_i)
end

index = a[0]
n.times do |i|
  if a[index-1] == 2
    puts i+2
    exit
  end
  if a[index-1] == index
    break
  end
  index = a[index-1]
end

puts -1