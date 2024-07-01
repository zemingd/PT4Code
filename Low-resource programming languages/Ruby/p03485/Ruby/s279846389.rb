while l = gets
  puts l.split(' ').reduce(0){|s,e|s+Integer(e)}.fdiv(2).ceil
end
