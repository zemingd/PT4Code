N = gets.to_i
s = N.times.map{gets.split.map(&:to_s)}

s.sort {|a,b| -1*(a[1].to_i <=> b[1].to_i)}.sort {|a,b| (a[0] <=> b[0])}.each do |i|
  p s.index(i)+1
end