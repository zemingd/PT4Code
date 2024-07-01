n = gets.chomp
for i in 0..n.length-1
  if n[i] == n[i+1]
    puts "Bad"
    exit
  end
end
puts "Good"