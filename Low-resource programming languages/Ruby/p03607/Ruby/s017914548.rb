n = gets.to_i
book = Hash.new(0)
n.times do |_|
  book[gets.to_i] += 1
end

res = 0
book.each do |_, v|
  res += 1 if v % 2 != 0
end
puts res