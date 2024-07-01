c = Array.new(2)
c[0] = gets.chomp.split("")
c[1] = gets.chomp.split("")
3.times do |i|
  if c[0][i] != c[1][2-i]
    puts "NO"
    exit
  end
end
puts "YES"