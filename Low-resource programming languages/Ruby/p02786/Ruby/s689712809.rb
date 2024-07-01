h = gets.to_i
ans = 0
num = 1
while 
    ans += num
    break if h == 1
    h = (h / 2).floor
    num *= 2
end
p ans