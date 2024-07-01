w = gets.chomp
cnt = 0

while  t = gets
  t.split(" ").each do |i|
    break if i == "END_OF_TEXT"
    cnt += 1 if i == w
  end
end

puts cnt