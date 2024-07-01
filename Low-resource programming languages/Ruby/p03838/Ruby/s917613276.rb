x,y=$<.read.split.map(&:to_i)

if x == y
    puts 0
elsif 0 < x && 0 < y
    puts (x-y).abs
elsif 0 < x || 0 < y
    puts [(x-y).abs,(x+y).abs+1].min
elsif x < y
    puts (y-x) 
else
    puts (x-y)+2
end
