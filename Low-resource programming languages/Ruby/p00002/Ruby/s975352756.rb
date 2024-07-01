while a = gets
  if a == nil 
    break 
  end
  a,b = a.split(" ")
  a = a.to_i + b.to_i
  puts a.to_s.size
end