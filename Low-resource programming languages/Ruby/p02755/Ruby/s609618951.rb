a,b=gets.split.map(&:to_i)
1000.times{|i|
if (i*0.08).to_i==a&&(i*0.1).to_i==b  
  p i
exit
end;}
p -1