n, m = gets.to_s.split.map{|i|i.to_i}
ds = Array.new(m){ gets.to_s.split.map{|i|i.to_i} }.sort{|x,y|x[1]<=>y[1]}

ans = 0
front = 1
ds.each do |ab|
  if ab[0] >= front
    ans += 1
    front = ab[1]
  end
end

puts ans