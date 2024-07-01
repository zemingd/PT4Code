inputs = gets.split(' ').map(&:to_i)
puts (inputs[0]...(inputs[1] + 1)).select { |i| inputs[2] % i == 0 }.count