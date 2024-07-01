N = gets.chomp.to_i
i = gets.chomp.split(' ').map(&:to_i)
result = 0

i.each do |a|
  result += (a - 1)
end

puts result