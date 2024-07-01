x=gets.to_i
cnt=0
(1..1000).each do |i|
 (2..1000).each do |j|
      cnt = i**j if x>=i**j
 end
end
puts cnt