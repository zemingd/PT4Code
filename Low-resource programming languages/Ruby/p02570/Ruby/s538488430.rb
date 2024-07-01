d,t,s = gets.split.map{|i| i.to_i}

if d <= t*s
  puts 'Yes'
else
  puts 'No'
end