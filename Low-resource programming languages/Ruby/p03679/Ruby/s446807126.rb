x,a,b = gets.split.map{|x|x.to_i}

over = b - a

if over > x
  puts 'dangerous' 
elsif over > 0
  puts 'safe'
else
  puts 'delicious'
end
