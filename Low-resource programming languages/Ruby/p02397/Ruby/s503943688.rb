while true
  tmp = gets.split(' ')
  input = tmp.map(&:to_i)
  if input[0] == 0 && input[1] == 0
    break
  elsif input[0] < input[1]
    print("%d %d\n" % [input[0], input[1]])
  elsif input[0] > input[1]
    print("%d %d\n" % [input[1], input[0]])
  end
end