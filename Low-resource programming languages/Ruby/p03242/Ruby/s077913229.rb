n = gets.split("")
s = []
(0..2).each do |i|
  if n[i] == "1"
    s[i] = "9"
  elsif n[i] == "9"
    s[i] = "1"
  else
    s[i] = n[i]
  end
end

puts s.join