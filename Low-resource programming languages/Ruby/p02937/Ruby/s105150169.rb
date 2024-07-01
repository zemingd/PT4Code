n = gets.to_i
a = Array.new(n){ gets.to_i }.sort.reverse
q = gets.to_i

q.times do
  k = gets.to_i
  if n <= k
    puts 0
  else
    ans = a[k] # aのk+1番目の人の点数なら落とす
    ans += 1 if a[k] != 0 # 落とすために1点上げる
    puts ans
  end
end
