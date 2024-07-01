s = gets.chomp.split('')
(0..2).each do |i|
  if s[i] == s[i+1]
    puts "Bad"
    exit
  end
end

puts "Good"