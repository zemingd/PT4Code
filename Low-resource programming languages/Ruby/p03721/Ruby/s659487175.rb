n,k=gets.split.map(&:to_i)
ab=n.times.map{gets.split.map(&:to_i)}
ab.each do |an,bn|
  k-=bn
  if k<=0
    puts an
    break
  end
end
