# Problem https://atcoder.jp/contests/abc095/tasks/abc095_b
# Ruby 2nd Try
n,x = gets.chomp.split(' ').map(&:to_i)
mi = Array.new(n,0)
for j in 0...n do
    mi[j] = gets.chomp.to_i
end
answer = 0
answer = n + (x-mi.sum)/(mi.min)
puts(answer)