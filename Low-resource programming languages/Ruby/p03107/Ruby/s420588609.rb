s = gets.chomp

count = [0,0]

for i in 0..(-1+s.length) do
  if s[i] == "0"
    count[0] += 1
  else
    count[1] += 1
  end
end

puts 2*count.min
