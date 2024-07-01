a1,a2,a3 = gets.split.map(&:to_i)
a4,a5,a6 = gets.split.map(&:to_i)
a7,a8,a9 = gets.split.map(&:to_i)
n = gets.to_i
b = []
a = n.times.map{gets.to_i}
bingo = [[a1,a2,a3],[a4,a5,a6],[a7,a8,a9],[a1,a4,a7],[a2,a5,a8],[a3,a6,a9],[a1,a5,a9],[a3,a5,a7]]
bingo.each do |array|
  b << "Yes" if (array&a).size == 3
end
if b.size == 0
  puts "No"
else
  puts "Yes"
end