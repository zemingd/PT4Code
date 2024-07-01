a,b,c,d=gets.split(" ").map(&:to_i)
if (a-c).abs <=3 || ((a-b).abs <=3 && (b-c).abs <=3)
  puts "Yes"
else
  puts "No"
end