a,b = gets.split.map(&:to_i)

c = gets.split.map(&:to_i)
d = c.length

e = c.sort
attack = 0

if b >= d 
  attack = 0
else
  for num in 0..d-b-1 do
    attack += e[num]   
  end
end
puts attack