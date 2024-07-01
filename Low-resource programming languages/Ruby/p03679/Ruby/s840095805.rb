x,a,b=gets.split.map &:to_i
if a<b
  if (b-a)<x
    puts 'safe'
  else
    puts 'dangerous'
  end
else
  puts 'delicious'
end