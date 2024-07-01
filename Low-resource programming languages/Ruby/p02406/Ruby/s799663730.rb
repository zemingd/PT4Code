num = STDIN.gets.to_i
output = ""

for i in 1..num do
  if i % 3 == 0 || i.to_s.index("3") then
    output += " #{i}"
  end
end

puts output