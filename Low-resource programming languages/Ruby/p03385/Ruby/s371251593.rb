a,b,k=gets.split(" ").map(&:to_i)

for i in a..b
  if i < a+k || i > b-k
    puts i
  end
end