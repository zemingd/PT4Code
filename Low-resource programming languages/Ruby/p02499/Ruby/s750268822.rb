while (line = gets) != nil
  for key in 'a'..'z'
    puts printf("%c : %d", key, line.downcase.count(key))
  end
end