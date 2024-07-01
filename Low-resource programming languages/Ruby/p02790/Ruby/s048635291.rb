a, b = gets.split.map(&:to_i)
if a > b
  for i in 1..a
    print b
  end
  puts ""
else
  for i in 1..b
    print a
  end
  puts ""
end