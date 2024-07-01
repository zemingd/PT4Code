W,H,x,y,r = gets.chomp.split.map(&:to_i)
if (x-r>=0) && (x+r<=W) then
  if (y-r>=0) && (y+r<=H) then
     puts "Yes"
     exit
  end
end
    puts "No"