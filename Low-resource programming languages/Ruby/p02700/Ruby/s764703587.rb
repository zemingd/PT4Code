line = gets.split(' ').map(&:to_i)
 
takhp = line[0]
takatt = line[1]
aokhp = line[2]
aokatt = line[3]
 

  aokhp = aokhp - takatt
  takhp = takhp - aokatt
  if aokhp <= 0 then
    answer = "Yes"

  end
  if takhp <= 0 then
    answer = "No"

  end

 
print answer