while line = gets
  if x = line.to_i == 0 then break end
  puts (x / 1000) + ((x % 1000 / 100)) + ((x % 100 / 10)) + (x % 10)
end