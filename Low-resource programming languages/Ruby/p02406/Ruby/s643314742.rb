num = STDIN.gets.to_i
output = ""

for i in 1..num do
  if i % 3 == 0 || i % 10 == 3 then
    output += " #{i}"
  else
    x = i / 10
    if x then 
      if x % 10 == 3 then
        output += " #{i}"
      end
    end
  end
end

puts output