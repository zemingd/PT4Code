N,x=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i).sort
ans = 0
tmp = 0
0.upto(N-1) do |i|
    tmp += a[i]
    break if tmp > x
    ans = i + 1
end

puts ans

