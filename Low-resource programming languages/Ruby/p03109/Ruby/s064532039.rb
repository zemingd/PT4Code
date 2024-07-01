b = gets.split('/')
y=b[0].to_i
m=b[1].to_i

if(y>2019)
  puts 'TBD'
elsif(y==2019 && m>=5)
  puts 'TBD'
else
  puts 'Heisei'
end