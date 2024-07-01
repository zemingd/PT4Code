n = gets.to_i
l = gets.split.map(&:to_i).sort
ans = 0
(1..n-2).each do |i|
  ((i+1)..n-1).each do |j|
    t = l[j]-l[i]
    z = l.bsearch_index{|x| x > t}
    if z && z < i
      ans += i - z
    end
  end
end
puts ans