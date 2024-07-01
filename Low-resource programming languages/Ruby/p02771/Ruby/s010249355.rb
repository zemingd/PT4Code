line = gets.split(' ').map(&:to_i)

answer = line.uniq.length

if answer == 2 then
  print "Yes"
else
  print "No"
end