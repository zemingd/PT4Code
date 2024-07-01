inputs = []
while true do
  a, b = gets.chomp.split(' ').map(&:to_i)
  break if a == 0 && b == 0
  inputs << [a, b]
end
inputs.each do |pair|
  sorted = pair.sort
  puts "#{sorted.first} #{sorted.last}"
end
