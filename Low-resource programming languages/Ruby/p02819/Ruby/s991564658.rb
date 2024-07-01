x = gets.to_i

while true do
  r = false
  for i in 2..(x - 1) do
    if x % i == 0
      r = true
      break
    end
  end
  break if !r
  x += 1
end

puts x