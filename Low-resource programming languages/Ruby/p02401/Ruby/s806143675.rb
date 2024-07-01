while line=gets
  puts eval(line) unless line.split(' ')[1]=='?'
end