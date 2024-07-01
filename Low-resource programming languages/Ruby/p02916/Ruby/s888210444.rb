n=gets.to_i
a=gets.chomp.split(" ").map(&:to_i) 
b=gets.chomp.split(" ").map(&:to_i) 
c=gets.chomp.split(" ").map(&:to_i) 
re=0
b.each {|i| re+=i}
mae=-10
a.each do |i|
  re+=c[i-2] if i==mae+1
  mae=i
end
puts re
  