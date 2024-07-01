while line = ARGF.gets do
  next if line =~ /\?/
  answer = eval line
  puts answer
end