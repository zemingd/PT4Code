n, m, c = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
sum = 0
n.times{
    a = gets.chomp.split.map(&:to_i)
    p = 0
    a.zip(b){|x, y| p += x * y}
    sum += 1 if p + c > 0    
}
puts sum