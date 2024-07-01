# n = gets.to_i
# s = gets.chomp
n,k = gets.split.map(&:to_i)

cnt = 0
t = 1
while t <= n do
    t *= k
    cnt += 1
end

p cnt