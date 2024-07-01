b,c=gets.strip.split(" ").map(&:to_i);
if b*c.odd?
 puts 'Odd'
else
  puts 'Even'
end