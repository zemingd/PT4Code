a, b = gets.split.map(&:to_i)
s = gets.chomp
correct = true
for i in 0...(a + b + 1) do
  case i
  when a
    correct = false if s[i] != "-"
  else
    correct = false if !"0123456789".include?(s[i])
  end
end
puts correct ? "Yes" : "No"
