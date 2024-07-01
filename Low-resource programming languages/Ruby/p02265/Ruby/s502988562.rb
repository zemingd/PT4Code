W,H,x,y,r = gets.split


if (x.to_i - r.to_i) >= 0 && (x.to_i + r.to_i) <= W.to_i
  if(y.to_i - r.to_i) >= 0 && (y.to_i + r.to_i) <= H.to_i
    puts "Yes"
  else puts "No"
  end
else puts "No"
end