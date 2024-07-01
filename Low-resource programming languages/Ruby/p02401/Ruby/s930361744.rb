while line = ARGF.gets do
  break if line =~ /\?/
  answer = eval line
  puts answer
end