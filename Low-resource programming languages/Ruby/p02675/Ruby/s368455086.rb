N=gets.to_s.split("")[-2]

if ["2","4","5","7","9"].include?(N) then
  puts('hon')
elsif ["0","1","6","8"].include?(N) then
  puts('pon')
else
  puts('bon')
end
