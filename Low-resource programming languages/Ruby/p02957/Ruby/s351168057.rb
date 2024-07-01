A, B = gets.split.map(&:to_i)

a = [A, B].min
b = [A, B].max

if (b - a) % 2 == 1
    puts "IMPOSSIBLE"
else
    puts a + b / 2
end