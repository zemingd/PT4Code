# https://atcoder.jp/contests/abc113/tasks/abc113_b
# Ruby 2nd Try
HOSEI = 0.006
n = gets.chomp.to_i
abss = Array.new(n,0.0)
t,a = gets.chomp.split(' ').map(&:to_f)
hi = gets.chomp.split(' ').map(&:to_f)
for j in 0..(n-1) do
    abss[j]=((t-hi[j]*HOSEI)-a).abs
end
answer = 0
avemin = abss[0]
for j in 1..(n-1) do
    if abss[j] < avemin
        answer = j
        avemin = abss[j]
    end
end
answer = answer+1
puts(answer)