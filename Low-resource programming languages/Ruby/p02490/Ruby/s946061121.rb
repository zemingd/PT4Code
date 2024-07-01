while line = gets
  input = line.split(" ")
  a = input[0].to_i; b = input[1].to_i
  break if a == 0 && b == 0
  if a > b then
    a ^= b; b ^= a; a ^= b
  end
  printf("%d %d\n", a, b)
end