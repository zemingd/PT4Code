n,d = gets.split.map(&:to_i)
s = n.times.map{gets.split.map(&:to_i)}

cnt = 0
s.combination(2) do |a,b|
  r2 = a.zip(b).map{|x,y| (x-y)**2 }.inject(:+)
  cnt +=1 if Math.sqrt(r2)**2 == r2 
end
p cnt