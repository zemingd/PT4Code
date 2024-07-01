s = gets.split("")

count = 700

for i in 0..2 do
  if s[i] == "o"
    count += 100
  end
end

puts count
