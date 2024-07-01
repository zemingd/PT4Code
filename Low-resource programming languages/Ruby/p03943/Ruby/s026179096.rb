candy_pac = gets.split
#p candy_pac

if (candy_pac[0] + candy_pac[1]) == candy_pac[2] then
  print 'Yes'
elsif (candy_pac[0] + candy_pac[2]) == candy_pac[1] then
  print 'Yes'
elsif (candy_pac[1] + candy_pac[2]) == candy_pac[0]
  print 'Yes'
else
  print 'No'
end