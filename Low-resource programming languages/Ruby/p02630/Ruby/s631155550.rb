n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

q = gets.chomp.to_i
q.times do
  b, c = gets.chomp.split(' ').map(&:to_i)
  as.map! { |a| a == b ? c : a }
  puts as.sum
end
