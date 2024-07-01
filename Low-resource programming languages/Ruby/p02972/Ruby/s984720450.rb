n = gets.to_i
as = gets.chomp.split.map(&:to_i)
bs = Array.new(n+1,0)
cnt = 0
ans = []
(1..n).reverse_each do |i|
  sum = 0
  j = i
  loop do
    i += j
    break if i > n
    sum += bs[i]
  end
  if as[j-1] != sum % 2
    bs[j] = 1
    cnt += 1
    ans << j
  else
    bs[j] = 0
  end
end
puts cnt
puts ans.sort.join(" ") if !ans.empty?