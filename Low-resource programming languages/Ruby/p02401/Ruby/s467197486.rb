while line = gets do
  next if line =~ /\?/ 
  puts(eval line)
end 