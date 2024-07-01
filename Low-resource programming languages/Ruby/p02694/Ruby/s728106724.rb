k = $stdin.gets.chomp.to_i
ans = 0
n = 100

while k > n do
    n = (n.to_f * 1.01).to_i
    ans += 1
end
puts ans