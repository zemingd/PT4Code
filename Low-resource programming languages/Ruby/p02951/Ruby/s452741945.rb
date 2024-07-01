A, B, C = gets.strip.split.map(&:to_i)

if B-(A-C)>=0
    puts B-(A-C)
else
    puts 0
end
