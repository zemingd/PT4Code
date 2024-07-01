A,B = (gets).split(" ").map{|i| i.to_i}

c = 0
case A
  when 0..5
    c = 0
  when 6..12
    c = B.div(2)
  else
    c = B
end

puts c
