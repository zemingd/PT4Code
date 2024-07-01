s = gets.chomp
Q = gets.to_i
Qvery = Q.times.map{gets.split.map(&:to_s)}

Qvery.each do |n|
  if n[0] == "1"
    s = s.reverse
    s
  else
    if n[1] == "1"
      s.insert(0, n[2])
      s
    else
      s << n[2]
      s
    end
  end
end

puts s