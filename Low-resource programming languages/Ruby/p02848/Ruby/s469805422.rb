n = gets.to_i
s = gets.chomp

len = s.length
for i in 0..len-1
  n.times do
    if s[i] == "Z"
      s[i] = "A"
    else
      s[i] = s[i].succ
    end
  end
end

puts s