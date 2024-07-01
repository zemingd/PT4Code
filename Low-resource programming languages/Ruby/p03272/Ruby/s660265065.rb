i = gets.chomp.split(" ").map(&:to_i)
all = i[0]
fro = i[1]

if all == 1
  p 1
else
  p all - fro + 1
end
