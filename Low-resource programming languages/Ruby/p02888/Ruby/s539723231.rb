n = gets.to_i
l = gets.split.map(&:to_i)
l.sort!
ans = 0
(1..n-2).each do |i|
  ((i+1)..n-1).each do |j|
    ans += i - [l.index(l.bsearch{|x| x > l[j] - l[i]}),i].min
  end
end
puts ans