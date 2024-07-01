N = gets.chomp.to_i
l = gets.split.map(&:to_i)

l.sort!
ans = 0
size = l.size - 1
size.times do |i|
  (i+1).step(size) do |j|
     upper = l[i] + l[j]
     ans += (l[j+1..-1].bsearch_index {|x| x >= upper }&.-(1) || size) - (j + 1) + 1
  end
end

p ans
