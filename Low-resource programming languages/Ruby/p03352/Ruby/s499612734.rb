n = gets.to_i
max = 1

for i in  1..31 do
  for j in 2..9 do
    if i ** j <= n && max < i ** j
      max = i**j
    end
  end
end
puts max