n = gets.chomp.to_f
inputs = []
5.times do
    inputs << gets.chomp.to_i
end
m = inputs.min
puts (n / m).ceil + 4