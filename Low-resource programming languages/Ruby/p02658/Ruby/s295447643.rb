N = gets.to_i
A = gets.split(' ').map(&:to_i).sort
count = 1

A.each do |i|
  count *= i

  if i == 0
    puts '0'
    exit
  elsif count > 10 ** 18
    puts '-1'
    exit
  end
end

puts count