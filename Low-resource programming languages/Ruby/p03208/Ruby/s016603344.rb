    N, K = gets.chomp.split(" ").map(&:to_i)
    array = []
    (1..N).each{|i| array.push(gets.to_i)}
    array.sort!
    min = 10 ** 9
    (0..(N - K)).each{|i|
        array2 = [array[i], array[i+1], array[i+2]]
        val = array2.max() - array2.min()
        if (val < min) then min = val end
    }
    puts min