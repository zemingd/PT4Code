n=gets.to_i
as = n.times.map { gets.to_i }
h = Hash.new(0)
as.each do |a|
  h[a] += 1
end
puts h.select{|k,v| v.odd?}.count