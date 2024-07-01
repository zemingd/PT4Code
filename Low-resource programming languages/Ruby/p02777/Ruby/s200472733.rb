S,T = gets.chomp!.split(" ")
x,y = gets.chomp!.split(" ").map(&:to_i)
choice = gets.chomp!
 
if choice.eql?(S)
  x -= 1
else
  y -= 1
end
 
puts "#{x} #{y}"