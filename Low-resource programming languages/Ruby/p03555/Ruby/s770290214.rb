3.times do |i|
  if c[0][i] != c[1][2-i]
    puts "No"
    exit
  end
end
puts "Yes"