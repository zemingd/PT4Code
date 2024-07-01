a, b, c = gets.chomp.split(" ").map(&:to_i)
100.times do |num|
  if a * num % b == c
    puts "YES"
    exit
  end
end
puts "NO"