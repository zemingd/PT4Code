n = gets.to_i
a = []
n.times do |i|
  a << gets.to_i
end
a.sort
while a.sum % 10 == 0
  a.shift
 break if a.empty?
end
puts a.sum