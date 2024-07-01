n = gets
n.to_i
a = gets.chomp.split.map(&:to_i)
b = a.select { |x| x % 2 == 0 }
c = b.select { |y| y % 3 == 0 || y % 5 == 0 }

if b.any?
  if b = c
  	puts "APPROVED"
  else
    puts "DENIED"
  end
else
  puts "DENIEDaaa"
end
