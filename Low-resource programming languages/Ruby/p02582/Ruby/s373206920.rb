S = gets.chomp

result = case S
when "RSS"
  1
when "SRS"
  1   
when "SSR"
  1
when "RRS"
  2
when "SRR"
  2
when "RSR"  
  1
when "RRR"
  3
else
  0
end
puts result