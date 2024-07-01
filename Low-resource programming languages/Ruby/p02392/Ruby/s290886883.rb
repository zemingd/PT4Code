x = gets
y = x.split
#
# if b[0].to_i < 0 || b[1].to_i < 0 || b[2].to_i < 0
#   return
# end
#
# if 100 < b[0].to_i || 100 < b[1].to_i || 100 < b[2].to_i
#   return
# end

if y[0].to_i < y[1].to_i && y[1].to_i < y[2].to_i && y[0].to_i < y[2].to_i
  puts "Yes"
  else
  puts "No"
end

