n = gets.chomp.to_i

list = [1,6,9,36,81,216,729,1296,6561,7776,46656,59049]
ans = [0]*(n+1)
(1..n).each do |i|
  min = 100000
  list.each do |j|
    min = ans[i-j] if i-j>=0 && min > ans[i-j]
  end
  ans[i] = min + 1
end
printf("%d\n",ans[n])