D,N = gets.split(" ").map{|i|i.to_i}

case D
when 0 then
    if N == 100
        puts 101
    else
        puts N
    end
when 1 then
    if N == 1000
        puts 10100
    else
        puts N*100
    end
when 2 then
    if N == 10000
        puts 1010000
    else
        puts N*10000
    end
end
