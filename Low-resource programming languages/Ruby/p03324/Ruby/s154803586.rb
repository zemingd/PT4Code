D,N = gets.chop.split.map(&:to_i)
if D == 0
    puts N-1
    elsif D == 1
    puts N*100
    else
    puts N*10000
end
