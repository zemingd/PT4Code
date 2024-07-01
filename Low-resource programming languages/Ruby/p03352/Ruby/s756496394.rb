x=gets.to_i
cnt=0
(1..31).each do |i|
 (2..31).each do |j|
      cnt = [i**j,cnt].max if (x>=i**j)
 end
end
puts cnt