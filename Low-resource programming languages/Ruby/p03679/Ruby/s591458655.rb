x,a,b=gets.split.map(&:to_i);
if (a-b)>-1
  puts 'delicious'
elsif x>(a-b)
  puts 'safe'
elsif
  puts 'dangerous'
end