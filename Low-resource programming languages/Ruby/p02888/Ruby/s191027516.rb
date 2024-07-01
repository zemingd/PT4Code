n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)
l.sort!
result = 0
0.upto(n-3) do |a|
  (a+1).upto(n-2) do |b|
    c = l.bsearch_index{|x| x >= l[a] + l[b]}
    result += (c ? c : n) - b - 1
  end
end
p result
