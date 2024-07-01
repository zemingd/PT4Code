line = gets.split(' ').map(&:to_i)
 
takhp = line[0]
takatt = line[1]
aokhp = line[2]
aokatt = line[3]
 
loop do
  aokhp = aokhp - takatt
  takhp = takhp - aokatt
  if aokhp <= 0 then
    answer = "Yes"
    break
  end
  if takhp <= 0 then
    answer = "No"
    break
  end
end
 
print answer