a,b = gets.split.map(&:to_i)
if b >= a
    puts a
else
    puts a - 1
end