a,b,c,d = gets.to_s.split.map{|i| i.to_i }
i = 0
while a > 0 && c > 0
  
  i.even? ? c-=b : a-=d
  i += 1
end

puts a>0 ? "Yes" : "No"