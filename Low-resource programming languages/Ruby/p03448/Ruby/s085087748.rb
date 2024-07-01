# https://atcoder.jp/contests/abc087/tasks/abc087_b
# Ruby 1st try
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
fivehundredmax = a
onehundredmax = b
fiftymax = c
total = x
answer = 0
for j in 0..fivehundredmax do
    for k in 0..onehundredmax do
        for m in 0..fiftymax do
            sum = j*500+k*100+50*m
            if sum == total
                answer = answer + 1
            end
        end
    end
end
puts(answer)