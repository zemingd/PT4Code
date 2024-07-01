def calc_sum_number(n, map)
  return 1 if n == 0
  return 4 if n == 1
  return 10 if n == 2
  
  salt = n < 10 ? 1 : -3
  map[n-1] * 3 - map[n-2] * 3 + map[n-3] + salt
end

map = []
0.upto(18) do |n|
  map << calc_sum_number(n, map)
end

while (line = gets)
  n = line.chop.to_i
  if n > 36
    puts 0
    next
  end

  n < 19 ? puts(map[n]) : puts(map[18 - (n - 18)])
end

