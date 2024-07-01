n = gets.split.map(&:to_i).sort!.reverse!
m = "#{n[0]}#{n[1]}"
s = m.to_i
puts s + n[2]