n = gets.to_i
l = gets.split.map(&:to_i)
l.sort!
ans = 0
(1..n-2).each do |i|
  ((i+1)..n-1).each do |j|
    z = l.bsearch_index{|x| x > l[j]-l[i]}
    if z != nil && z < i
      ans += i - z
    end
  end
end
puts ans