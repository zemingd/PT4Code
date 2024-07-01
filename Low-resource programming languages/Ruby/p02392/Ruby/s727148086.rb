x = gets
y = x.split

# if y[0].to_i < 0 || y[1].to_i < 0 || y[2].to_i < 0
#   return
# end
#
# if 100 < y[0].to_i || 100 < y[1].to_i || 100 < y[2].to_i
#   return
# end
for w in 0 ... 2 do
  if  y[w].to_i < 0 || 100 < y[w].to_i
    return
  end
end


unless (0 <= y[0].to_i && 0 <= y[1].to_i && 0 <= y[2].to_i )&&
       ( y[0].to_i  <= 100 && y[1].to_i  <= 100 && y[2].to_i  <= 100)
  return
end

if y[0].to_i < y[1].to_i && y[1].to_i < y[2].to_i && y[0].to_i < y[2].to_i
  puts "Yes"
  else
  puts "No"
end
