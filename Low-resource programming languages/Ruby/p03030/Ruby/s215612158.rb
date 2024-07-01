n = gets.to_s.to_i
 
a = Array.new(n) do |i|
  s, point = gets.to_s.split
  e = s, -point.to_i, i+1
end
 
a.sort.each{|_,_,i| puts i }