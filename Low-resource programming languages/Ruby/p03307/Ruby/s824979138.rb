# Multiple of 2 and N
N = gets.chomp.to_i
n = N
while true do
    if n % N == 0 && n % 2 == 0
        break
    end
    n = n * 2
end
puts n 