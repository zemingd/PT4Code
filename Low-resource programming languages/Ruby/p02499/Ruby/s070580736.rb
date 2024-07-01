dict = Hash.new([])

for key in 'a'..'z'
  dict[key] = 0;
end

while (line = gets) != nil
  for key in 'a'..'z'
    dict[key] += line.downcase.count(key)
  end
end

for key in 'a'..'z'
  puts printf("%c ; %d", key, dict[key])
end