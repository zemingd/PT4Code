n = gets.to_i
s = gets.chomp

count = 0
for i in 0..n-3
  if s[i] == "A" && s[i+1] == "B" && s[i+2] == "C"
    count += 1
  end
end

puts count