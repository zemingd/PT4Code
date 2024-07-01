input = gets.chomp.split(' ').map(&:to_i)
divisor = []
(input[0]..input[1]).each do |int|
    divisor << int if input[2] % int == 0
end
puts divisor.count
