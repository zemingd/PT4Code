n = gets.chomp

count = 0
n.each_char do |ni|
  if n[count] == "9"
    n[count] = "1"
  else
    n[count] = "9"
  end
  count += 1
end

puts n