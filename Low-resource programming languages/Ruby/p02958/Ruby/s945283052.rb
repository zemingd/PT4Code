n = gets.to_i
p = gets.split.map(&:to_i)

need_swap = Array.new(n, 0)
(n - 1).times do |i|
  need_swap[i] = 1 if p[i] != p[i + 1] - 1
end

count = need_swap.count { |n| n == 1 }

if count == 0 || count == 2
  puts 'YES'
elsif n >= 6 && count >= 2 && count <= 4
  puts 'YES'
else
  puts 'NO'
end