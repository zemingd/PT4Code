loop do

x,y = gets.split.map(&:to_i)
exit if x=0 y=0
if x < y
puts x y
else y < x
puts y x
end