n = gets.to_i
p = gets.split.map(&:to_i)

need_swap = Array.new(n, 0)
n.times do |i|
  need_swap[i] = 1 if p[i] != i + 1
end

count = need_swap.count { |n| n == 1 }

if count == 0 || count == 2
  puts 'YES'
else
  puts 'NO'
end