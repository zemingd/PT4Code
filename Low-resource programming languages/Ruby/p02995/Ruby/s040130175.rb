a,b,c,d = gets.split.map &:to_i
z = b - a  + 1 - ((b / c + b / d - b /(c * d)) - ((a-1) / c + (a-1) / d - (a-1) / (c * d)))
if b % a == 0
    puts z+ 1
else
    puts z
end
