def result(readlines)
  n_x = readlines[0].chomp.split.map(&:to_i)
  n = n_x[0]
  x = n_x[1]

  a_array = readlines[1].chomp.split.map(&:to_i)
  a_array.sort!

  count = 0
  (1..n).each do |index|
    x -= a_array[index - 1]

    if index == n && x > 0
      break
    end
    
    if x >= 0
      count += 1
    else
      break
    end
  end
  count
end

puts result(readlines)
