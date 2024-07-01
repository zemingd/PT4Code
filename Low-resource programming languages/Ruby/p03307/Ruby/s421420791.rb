n = gets.to_i
loop do
    break if n % 2 == 0
    n *= 2
end
puts n