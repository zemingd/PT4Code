n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e|e.to_i  }
bc = []
list = []

q = gets.chomp.to_i
q.times do
  bc << gets.chomp.split(" ").map { |e|e.to_i  }
end

lsit = a.tally
list.default = 0
sum = a.sum

bc.each do |b, c|
  sum += list[b] * (c - b)
  list[c] += list[b]
  list[b] = 0
  puts sum
end
