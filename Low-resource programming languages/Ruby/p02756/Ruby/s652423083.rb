s = gets.chomp
q = gets.to_i

q.times do |i|
  query = gets.chomp.split(" ").map(&:to_s)
  if query[0] == "2"
    if query[1] == "1"
      s = query[2] + s
    else
      s = s + query[2]
    end
  else
    s = s.reverse
  end
end
puts s