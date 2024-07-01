a,b,c = gets.strip.split.map(&:to_i)
if c>=a*b
    puts c
else
    puts b/a
end

