n = gets.to_i
s = gets.chomp

count = 0
s.split('').each_cons(3) do |a|
  count += 1 if a == %w[A B C]
end

puts count