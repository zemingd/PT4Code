while line = ARGF.gets do
  next if line =~ /\?/
  return unless line =~ /\w/
  answer = eval line
  puts answer.to_i
end