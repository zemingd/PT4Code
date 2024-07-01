x,y=gets.split.map(&:hex);
case (x <=> y) <=> 0
when 0
  puts "="
when 1
  puts ">"
else
  puts "<"
end