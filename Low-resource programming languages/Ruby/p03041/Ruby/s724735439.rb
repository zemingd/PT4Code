a,b=gets.split.map(&:to_i);
c=gets.chomp
puts a == 1 ? c[b-1].downcase : c[0]+c[b].downcase+c[b+1..a]