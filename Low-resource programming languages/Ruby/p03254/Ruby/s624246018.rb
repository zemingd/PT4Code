N, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
total = a.inject(:+)

if total < x then
    puts N-1
elsif total == x then
    puts N
else
    sweets_gave = 0
    puts a.inject(0) {|sum, v|
        sweets_gave += v
        sum = sweets_gave <= x ? sum+1 : sum
    }
end