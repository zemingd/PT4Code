N = gets.chomp.to_i
d = Array.new(N)
e = Array.new(N,0)
max = 0
str = gets.split
for i in 0...N do
    d[i] = str[i].to_i
    x = d[i]
    max = max < x ? x : max
    e[x] += 1
end
if d[0] != 0 || e[0] != 1
    puts 0
    exit
end
answer = 1
for i in 2..max do
    x = e[i]
    y = e[i-1]
    while x > 0
        answer *= y
        x -= 1
    end
    answer %= 998244353
end
puts answer