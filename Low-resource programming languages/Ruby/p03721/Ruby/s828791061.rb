ary =[]
n,k = gets.chop.split(" ").map(&:to_i)
i = 1
j = 1
while i <= n
  a,b = gets.chop.split(" ").map(&:to_i)
  i += 1
  b.times do
    ary<<a
    break if ary.length == k
  end
end
ans = ary.sort
puts ans[k-1]