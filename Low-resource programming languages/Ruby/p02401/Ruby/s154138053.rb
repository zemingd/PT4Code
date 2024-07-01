while line=gets
  puts eval(line) if line.split(' ')[1]=!'?' and line!=''
end