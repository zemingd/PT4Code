a,b,c,d = gets.split(" ").map(&:to_i)
l = a+b
r = c+d
case l <=> r
when 1 then
    puts "Left"
when 0 then
    puts "Balanced"
when -1 then
    puts "Right"
end