def fact(number)
  (1..number).inject(1,:*)
end

def combi(n,k)
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

N = gets.to_i
a = gets.split.map(&:to_i)
arr = Array.new(N + 1, 0)
comb = Array.new(N + 1, 0)
sum = Array.new(N + 1, 0)
a.each do |num|
  next if arr[num] != 0
  cnt = a.count(num)
  arr[num] = cnt
end

(2..N).each do |i|
  comb[i] =  combi(i, 2)
end

arr.each_with_index do |cnt, i|
  sum[i] = comb[cnt]
end
anser = sum.inject(:+)
a.each do |num|
  puts anser - sum[num] + comb[(arr[num] - 1)]
end