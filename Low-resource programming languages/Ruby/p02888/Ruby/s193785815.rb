n = gets.to_i
l = gets.split.map(&:to_i).sort
ans = 0
n.times do |i|
  (i+1).upto(n - 2) do |j|
    a = l[i] + l[j]
    b = l.bsearch_index{|x| x >= a}
    b = n if b.nil?
    ans += b - j - 1
  end
end
p ans