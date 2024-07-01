N = gets.to_i
A = Array.new(N){gets.to_i}
H = Hash.new(0)

A.each do |a|
  H[a] += 1
end

puts H.map{|k,v|v.odd? ? 1 : 0}.inject(:+)