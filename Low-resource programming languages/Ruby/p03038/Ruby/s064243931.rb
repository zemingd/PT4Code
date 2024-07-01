N,M = gets.chomp.split.map(&:to_i)

A = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
A.each do |a|
  h[a] += 1
end

M.times do
  b, c = gets.chomp.split.map(&:to_i)
  h[c] += b
end


ans = 0
i = 0
n = A.length

h.sort_by{|k,v| k}.reverse.each do |key,value|
  break if i == n

  cnt = [value, n-i].min
  ans += key * cnt
  i += cnt
end

p ans


