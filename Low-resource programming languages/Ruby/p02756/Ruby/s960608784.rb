s = gets.chomp

q = gets.chomp.to_i

q.times do |i|
  arr = gets.chomp.split(" ")
  if arr[0].to_i == 1
    s.reverse!
    next
  end

  if arr[1].to_i == 1
    s = arr[2] + s
  else
    s = s + arr[2]
  end
end

puts s