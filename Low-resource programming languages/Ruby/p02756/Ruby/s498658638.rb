s = gets.chomp
q = gets.to_i
is_r = false

q.times do |i|
  data = gets.chomp.split
  if data.length == 1
    is_r = !is_r
  else
    if (is_r && data[1].to_i == 2) || (data[1].to_i == 1)
      s = data[2] + s
    else
      s = s + data[2]
    end
  end
end

puts is_r ? s.reverse : s