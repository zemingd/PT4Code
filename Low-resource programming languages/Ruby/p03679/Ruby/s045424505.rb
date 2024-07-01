x,a,b=gets.split.map(&:to_i)
case
  when a>=b
  puts 'delicious'
  when a+x<b
  puts 'dangerous'
else
  puts 'safe'
end
