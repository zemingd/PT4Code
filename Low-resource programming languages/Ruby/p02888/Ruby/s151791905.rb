n = gets.to_i
l = gets.chomp.split.map(&:to_i).sort!
res = 0

0.step(n - 3) do |i|
  (i + 1).step(n - 2) do |j|
    r = l[(j + 1)...n]
    a, b = l[i], l[j]
    k = r.bsearch_index {|c| c >= a + b } || r.size
    res += (k + j) - j
  end
end
puts res
