line1 = gets
line2 = gets

N = line1.to_i
umasas = line2.split(" ")

sum = 0
i = 0

umasas.length.times do
  break if i == umasas.length - 1
  
  nokori = umasas.length - (i+1)
  k = i + 1
  
  nokori.times do
    j = k == umasas.length - 1
    
    x = umasas[i].to_i
    y = umasas[k].to_i
    
    umasa = x * y
    sum += umasa
    
    k += 1
  end
  
   i += 1
end

p sum

