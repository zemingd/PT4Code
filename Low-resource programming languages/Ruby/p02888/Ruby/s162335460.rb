n = gets.to_i
l = gets.split.map(&:to_i)
l.sort!
lp = l.reverse
ans = 0
(0..n-2).each do |i|
  (i+1..n-2).each do |j|
    r = (n-1) - lp.index{|x| x < l[i]+l[j]}
    q = l.index{|x| x > l[j]-l[i]}
    #p [i,j,r,q]
    if r != nil && q != nil
      q = [q,j+1].max
      ans += r-q+1 unless r-q+1 <= 0
    end
  end
end
puts ans