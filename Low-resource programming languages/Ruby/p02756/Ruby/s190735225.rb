s = gets.chomp

q = gets.chomp.to_i

direction = true
q.times do |i|
  arr = gets.chomp.split(" ")
  if arr[0].to_i == 1
    direction = !direction
    next
  end

  if (arr[1].to_i == 1 && direction) || (arr[1].to_i != 1 && !direction)
    s = arr[2] << s
  else
    s = s << arr[2]
  end
end

s.reverse! unless direction

puts s