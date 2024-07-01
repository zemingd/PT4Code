N, X = gets.chomp.split(' ').map(&:to_i)
 
m = []
N.times do
  m.push(gets.chomp.to_i)
end
 
m.sort!
sum = m.inject(&:+)
 
rem = X - sum
 
puts answer = N + rem / m.min