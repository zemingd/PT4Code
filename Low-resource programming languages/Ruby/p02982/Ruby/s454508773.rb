n, d = gets.strip.split(" ").map(&:to_i)
answer=[]
line=[]
require "matrix"

n.times do
  line << gets.strip.split.map(&:to_i)
end
(n-1).times do |i|
  (n-1-i).times do|j|
 v1=Vector.elements(line[i])
 v2=Vector.elements(line[i+1+j])
 answer <<   (v2 - v1).r.to_f
  end
end
puts answer.select{|e| e==e.to_i}.count