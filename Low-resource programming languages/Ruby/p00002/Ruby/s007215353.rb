while line=gets
  line.chomp!
  cins=line.split(' ')
  p (cins[0].to_i+cins[1].to_i).to_s.length
end
