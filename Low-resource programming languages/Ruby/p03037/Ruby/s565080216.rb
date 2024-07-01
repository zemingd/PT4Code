_n, m = gets.chomp.split(' ').map(&:to_i)
 
numbers = []
m.times do |i|
  l, r = gets.chomp.split(' ').map(&:to_i)
  numbers = [*l..r] and next if i == 0
  numbers &= [*l..r]
end
 
puts numbers.size