input = readlines;
N = input[0].to_i

for i in 1..N do
  n = input[i].chomp.to_i
  puts n
  if i % 2 != 0
    a = n
    next;
  else
    b = n
  end

  if (a+b).to_s.length <= 80
    puts a + b
  else
    puts overflow
  end

end
