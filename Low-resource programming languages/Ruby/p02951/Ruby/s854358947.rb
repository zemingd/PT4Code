a,b,c = gets.split.map(&:to_i)
rest = a-b
if c <= rest then
    puts '0'
else
    puts c - rest
end