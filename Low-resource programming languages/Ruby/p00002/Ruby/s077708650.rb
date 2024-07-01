while line = gets
  value = line.chomp
  list = value.split
  a = list[0].to_i
  b = list[1].to_i
  result = a + b
  keta = 1
  while((result / 10) != 0)
    result /= 10
    keta += 1
  end
  puts keta
end

