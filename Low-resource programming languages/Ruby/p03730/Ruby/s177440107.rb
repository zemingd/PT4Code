a, b, c = gets.chomp.split.map &:to_i
b.times do |i|
  if (a*i)%b == c
    puts "Yes"
    exit
  end
end
puts "No"
