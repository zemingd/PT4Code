a,b,c=gets.chomp.split(" ").map(&:to_f)
sa = Math.sqrt(a);sb = Math.sqrt(b);sc = Math.sqrt(c)
if sa+sb < sc
 puts "Yes"
else
  puts "No"
end
