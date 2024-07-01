D, n = gets.split.map(&:to_i)
N = (n == 100) ? 101 : n
case D
when 0
    puts N
when 1
    puts N*100
when 2
    puts N*10000
end