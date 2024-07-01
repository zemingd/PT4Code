n = gets
a = gets.split.map(&:to_i)
a.each do |i|
  if a % 2 != 0
    next
  end
  
  if a % 3 == 0
    next
  end
  
  if a % 5 == 0
    next
  end
  puts "DENIED"
  exit
end
puts "APPROVED"
