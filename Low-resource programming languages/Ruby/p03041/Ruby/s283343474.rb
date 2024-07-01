input = gets.split(" ").map{|item|item.to_i}
moji= gets.chomp
if moji[input[1]-1] == "A" then
  moji[input[1]-1] == "a"
elsif moji[input[1]-1] == "B" then
  moji[input[1]-1] == "b"
else
  moji[input[1]-1] == "c"
  end
  print moji
