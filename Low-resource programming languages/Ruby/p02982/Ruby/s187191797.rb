require "matrix"
n, d,= gets.split.map(&:to_i)
vec = []
n.times { vec << Vector.elements(gets.split.map(&:to_i))}
count =0
vec.combination(2).to_a.each do |n|
    count += 1 if (n[0]-n[1]).r.to_i == (n[0]-n[1]).r 
end
puts count