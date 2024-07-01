W, H, X, Y = gets.split.map(&:to_i)

if W/2.0==X && H/2.0==Y
  puts "#{W.to_f*H.to_f/2.0}" + " " + "1"
else
  puts "#{W.to_f*H.to_f/2.0}" + " " + "0"
end