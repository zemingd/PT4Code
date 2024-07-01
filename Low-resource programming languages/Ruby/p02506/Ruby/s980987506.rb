w = gets.to_s
w.strip!
cnt = 0
while true
 input = gets.split(" ")
 break if input[0] == "END_OF_TEXT"
 input.each do |i|
  if i == w
   cnt += 1
  end
 end
end
puts cnt