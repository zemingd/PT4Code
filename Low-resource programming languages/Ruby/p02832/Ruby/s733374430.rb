N = gets.chomp.to_i
str = gets.split
a = Array.new(N)
for i in 0...N do
    a[i] = str[i].to_i
end

n = 1
for i in 0...N do
    if a[i] == n
        n += 1
    end
end
if n == 1
    puts -1
else
    answer = N - n + 1
    puts answer
end