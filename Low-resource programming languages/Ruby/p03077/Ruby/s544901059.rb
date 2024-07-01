n = gets.chomp.to_i
inputs = []
5.times do
    inputs << gets.chomp.to_i
end
m = inputs.min
puts n/m + 5