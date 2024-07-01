n = gets.chomp.to_i
inputs = []
5.times do
    inputs << gets.chomp.to_i
end
m = inputs.min
a = n % m == 0 ? 0 : n/m
puts a + 5