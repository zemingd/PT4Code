n = gets.to_i

a = Array.new(n) do |i|
  s, point = gets.to_s.split
  e = s, point.to_i, i+1
end

a.sort_by{|_,point,_|-point}.sort_by{|s,_,_|s}.each{|_,_,i| puts i }
