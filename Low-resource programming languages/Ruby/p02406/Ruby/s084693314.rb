s=[];
(1..gets.to_i).each do |x|
  len = x.to_s.length
  if x%3 == 0 || x%10 == 0 || x.to_s.slice(len-1,len) == "3"
    s << x
  end
end
puts s.join(" ")