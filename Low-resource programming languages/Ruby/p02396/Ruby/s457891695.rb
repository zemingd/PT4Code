c = 1
while 
 buf = gets.to_i
 unless buf == 0
  puts 'Case #{c}: #{buf}'
 else
  break
 end
 c += 1
end