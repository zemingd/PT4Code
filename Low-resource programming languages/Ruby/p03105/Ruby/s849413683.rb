a,b,c = gets.strip.split.map(&:to_i)
if b>=a*c
    puts c
else
    puts b/a
end

