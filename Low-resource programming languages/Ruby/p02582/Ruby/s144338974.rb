s = gets.chomp
sum = 0

if s.match?(/^SSS$/)
  puts sum
else
  puts sum += s.slice(/R+/).size
end