n,x=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).push(x).sort
diff=[]
n.times do |i|
  diff.push(as[i+1]-as[i])
end
puts diff.inject(:gcd)
