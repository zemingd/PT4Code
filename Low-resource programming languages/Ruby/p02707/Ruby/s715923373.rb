N = gets.to_i
a = gets.split.map(&:to_i)
r = [0]*N
a.each do |x|
  r[x-1]+=1
end
puts r
