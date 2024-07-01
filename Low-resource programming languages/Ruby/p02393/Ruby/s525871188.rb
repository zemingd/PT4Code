a,b,c=gets.split.map &:to_i
if a <= b && b <= c then
   puts "#{a} #{b} #{c}"
elsif a <= c && c <= b then
   puts "#{a} #{c} #{b}"
elsif b <= a && a <= c then
  puts "#{b} #{a} #{c}"
elsif b <= c && c <= a then
  puts "#{b} #{c} #{a}"
elsif c <= a && a <= b then
  puts "#{c} #{a} #{b}"
elsif c <= b && b <= a then
  puts "#{c} #{b} #{a}"
end
