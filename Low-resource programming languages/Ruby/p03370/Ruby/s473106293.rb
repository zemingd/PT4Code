n, x = gets.chomp.split.map(&:to_i)

lists = []
n.times do
  lists << gets.chomp.to_i
end

lists.sort!

sum = 0
count = 0
lists.each do |item|
  if sum + item < x
    sum += item
    count += 1
  end
end

puts count + (x - sum) / (lists).min
