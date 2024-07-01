k = gets.to_i
val = 100
cnt = 0

loop do
    val = val * 101 / 100
    cnt += 1
    break if k <= val
end

puts cnt