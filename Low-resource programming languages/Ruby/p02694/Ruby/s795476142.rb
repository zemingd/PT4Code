X = gets.to_i
i = 0
n = 100
loop {
    n = n + (n/100).to_i
    i = i + 1
    if n >= X
        puts i
        exit
    end
}
