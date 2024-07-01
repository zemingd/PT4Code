lines = readlines
s = lines[0].chomp.split("")
t = lines[1].chomp.split("")

counter = 0

s.each_with_index do |sc, i|
  if sc == t[i]
    counter += 1
  end
end

p counter

