a,b = gets.split.map(:&to_i)
nrray = [*1..316]
mrray = nrray.map{|x| x*x }
if b<10
  if mrray.any?{|y| y == 10*a+b }
    puts "Yes"
  else
    puts "No"
  end
elsif b<100
  if mrray.any?{|y| y == 100*a+b }
    puts "Yes"
  else
    puts "No"
  end
else
  if mrray.any?{|y| y == 1000*a+b }
    puts "Yes"
  else
    puts "No"
  end
end