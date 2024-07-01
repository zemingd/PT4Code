input = gets
day = input.split(" ").map(&:to_i)

if day[0] > day[1]
    puts day[0] - 1
  else
    puts day[0]
end