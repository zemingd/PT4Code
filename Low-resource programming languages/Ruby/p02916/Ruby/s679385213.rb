_ = gets.to_i
a = gets.chomp.split(' ').map(&:to_i).map{ |i| i - 1 }
b = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)
prev = -2
result = 0
a.each do |i|
  result += b[i]
  result += c[prev] if prev + 1 == i
  prev = i
end
puts result