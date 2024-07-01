n,k = gets.chomp.split().map(&:to_i)
h = gets.chomp.split().map(&:to_i)

if n <= k
 puts 0
else
 h.sort!
 k.times do
  h.pop()
 end
 puts( h.inject(:+))
end