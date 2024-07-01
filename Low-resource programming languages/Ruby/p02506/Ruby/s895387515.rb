k=gets.chomp
count = 0
while true
  w = gets.chomp
  break if w =~ /END_OF_TEXT/i
  w = w.split(" ")
  w.length.times do |i|
    if w[i] =~ /#{k}/i
      count += 1
    end
  end
end
puts count