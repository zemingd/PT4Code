N = gets.to_i
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i
min_cnt = [A,B,C,D,E].min
ans = 0
if (N <= min_cnt) then
    ans = 5
else
    ans = 5 + (N - min_cnt) / min_cnt
    ans = (N % min_cnt) === 0 ? ans : ans + 1
end

puts ans
