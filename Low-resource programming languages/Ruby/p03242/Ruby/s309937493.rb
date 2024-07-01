n = gets.chomp

for i in 0..(n.length-1) do
  if n[i] == "1"
    n[i] = "9"
  else
    n[i] = "1"
  end
end

puts n.to_i
