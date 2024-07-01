a,b,c = gets.chomp.split.map(&:to_i)

candys = [a,b,c].sort

if candys[2] == candys[0]+candys[1]
  puts "Yes"
else
  puts "No"
end