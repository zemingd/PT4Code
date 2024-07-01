n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

ans = Array.new(8, 0)
i = 1
a.each do |x|
  ans[x - 1] = i
  i += 1
end

puts ans.join(' ')
