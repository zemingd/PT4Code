while line = gets.split.map(& :to_i)
  if line[0] == 0 && line[1] == 0
    break
  elsif line[0] <= line[1]
    print line[0].to_s + " " + line[1].to_s + "\n"
  else
    print line[1].to_s + " " + line[0].to_s + "\n"
  end
end