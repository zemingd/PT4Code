s=[];
(1..gets.to_i).each do |i|
  x=i
  if x%3 == 0
    s << i
  else
    while x!=0
      if x%10 == 3
        s << i
        break
      else
        x = (x/10).to_i
      end
    end
  end
end
puts " "+s.join(" ")