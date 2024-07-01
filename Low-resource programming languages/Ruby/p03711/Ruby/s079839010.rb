def id(x)
  case x
  when 1,3,5,7,8,10,12 then 1
  when 4,6,9,11 then 2
  else 3
  end
end

x,y = gets.split.map(&:to_i)
puts id(x) == id(y) ? "Yes" : "No"