i = 1

loop do
  x = gets.split.map(&:to_i)[0]

  if x == 0
    break
  else
    print "Case ", i, ": ", x, "\n"
  end

  i = i + 1
end