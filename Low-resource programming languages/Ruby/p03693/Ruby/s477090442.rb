n = gets.to_i
a = []
n.times{
    a << gets.chomp.to_i
}
result = a.max - a.min
puts( result )