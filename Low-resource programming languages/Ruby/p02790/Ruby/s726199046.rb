line = gets.split(' ').map(:&to_i)

if (line[0] => line[1])
  line[0].times{
  puts "#{line[1]}"
  }
else
  line[1].times{
  puts "#{line[0]}"
  }
end