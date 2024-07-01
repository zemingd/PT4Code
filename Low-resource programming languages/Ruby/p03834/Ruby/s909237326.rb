s = gets.chomp.chars
s.map! do |s_i|
  s_i == "," ? " " : s_i
end
puts s.join("")