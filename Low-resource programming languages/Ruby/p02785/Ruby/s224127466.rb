str = gets.split
N,K = str[0].to_i, str[1].to_i
a = Array.new(N)
str = gets.split
for i in 0...N do
    a[i] = str[i].to_i
end
a.sort!
x = N-K
if x <= 0
    puts 0
else
    answer = 0
    for i in 0...x do
        answer += a[i]
    end
    puts answer
end