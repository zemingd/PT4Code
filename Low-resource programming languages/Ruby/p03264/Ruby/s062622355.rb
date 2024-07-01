k=gets.chomp.to_i
case k%2
when 0 then
  puts (k/2)*(k/2)
when 1 then
  puts (k/2)*(k/2+1)
end