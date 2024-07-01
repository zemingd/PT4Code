a, b, c = gets.chomp.split.map(&:to_i)

aa=a

100.times do
 if aa % b == c
  puts "YES"
  exit
 end
 aa+=a
end
puts "NO"
