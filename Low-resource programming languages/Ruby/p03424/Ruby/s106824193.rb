N = gets.to_i
data = []
N.times do |i|
 data << gets
 if data[i] == 'Y' then puts "Four" end
end
puts "Three"