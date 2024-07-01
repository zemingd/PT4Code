#!/usr/bin/ruby
#encoding: utf-8

#input 
N,L = gets.split.map(&:to_i)

alltaste = 0
(1..N).each do |i|
  alltaste += (L+i-1)
end

#puts "alltaste = #{alltaste}"

min = 10000000
diffary = []
tmptaste = 0
diff = 0
(1..N).each do |i|
  tmptaste = alltaste - (L+i-1)
  #puts "tmptaste = #{tmptaste}"
  diff = (alltaste - tmptaste).abs
  
  diffary.push(diff)

end

#puts diffary.min
ans = 0

(1..N).each do |i|
  tmptaste = alltaste - (L+i-1)
  diff = (alltaste - tmptaste).abs

  if diff == diffary.min
    ans = tmptaste
  end
end

puts ans 
