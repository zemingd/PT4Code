k = gets.to_i
arr = 1.upto(k).map{|n|n}
res = 0
arr.each do |a|
  arr.each do |b|
    arr.each do |c|
      res += (a).gcd(b).gcd(c)
    end
  end
end
puts res