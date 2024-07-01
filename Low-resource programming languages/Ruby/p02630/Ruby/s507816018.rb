n = gets.to_i
a = gets.split.map(&:to_i)

count = Array.new(10**5 + 1, 0)
a.each do |aa|
    count[aa] += 1
end
sum = a.inject(:+)
q = gets.to_i
q.times do
    b, c = gets.split.map(&:to_i)
    count[c] += count[b]
    sum += count[b] * (c - b)
    count[b] = 0
    puts sum
end