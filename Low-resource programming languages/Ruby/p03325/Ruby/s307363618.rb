d = gets.chomp().to_i
a = gets.chomp().split(" ").map(&:to_i)

count = 0

puts count if a.all? { |i| i.odd? }

a.each do |n|
  while !(n & (n-1))
    count = count + 1
    n = Math.sqrt(n)
  end
end

puts count
