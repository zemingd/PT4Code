while (n=gets.chomp.split.map(&:to_i)).uniq[0] !="-1"&&n.uniq.size !=1
unless n[0]==-1||n[1]==-1
case (n[0]+n[1])
when 80..100;puts "A"
when 65...80;puts "B"
when 50...65;puts "C"
when 30...50;puts n[2]>=50? "C" : "D"
else;puts "F";end
else;puts "F";end
end
