N, M, K = gets.split.map(&:to_i)
a = []
b = []
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

sa = []
sa[0] = 0
sb = []
sb[0] = 0
N.times do |i|
  sa[i+1] = sa[i] + a[i]
end
M.times do |i|
  sb[i+1] = sb[i] + b[i]
end

ans = 0
j = M
(N+1).times do |i|
  break if a[i] > K
  while sb[j] > K - sa[i]
    j -= 1 
  end
  ans = [ans, i+j].max
end


puts ans