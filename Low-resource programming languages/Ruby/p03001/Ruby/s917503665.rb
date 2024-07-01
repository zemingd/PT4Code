W, H, X, Y = gets.split.map(&:to_i)

if W/2==X && H/2==Y
  puts "#{W.to_f*H.to_f/2}" + " " + "1"
else
  puts "#{W.to_f*H.to_f/2}" + " " + "0"
end