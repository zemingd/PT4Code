while str = STDIN.gets
  n = str.split(" ")
  a = n[0].to_i
  b = n[1].to_i
  c = n[2].to_i

count = 0
  for i in a..b
    if c % i == 0
      count += 1
    end
  end
puts count
end