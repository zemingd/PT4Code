n,k=gets.split.map(&:to_i)
p ab=n.times.map{gets.split.map(&:to_i)}.sort
c=0
ab.each do |a,b|
  c+=b
  if k<=c
    puts a
    exit
  end
end
