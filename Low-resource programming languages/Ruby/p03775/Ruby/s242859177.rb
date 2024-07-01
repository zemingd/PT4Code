N = gets.to_i
n = (N ** 0.5).floor
warn n.inspect
loop{
    break if N % n == 0
    n -= 1
}
puts (N / n).to_s.size
