line = gets.split(' ').map(&:to_i)
 
takhp = line[0]
takatt = line[1]
aokhp = line[2]
aokatt = line[3]
 
if (aokhp / takatt) > (takhp / aokatt) then
  answer = "Yes"
else
  answer = "No"
end
  print answer