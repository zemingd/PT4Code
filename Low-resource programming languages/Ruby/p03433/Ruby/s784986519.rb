n = gets.chomp.to_i
a = gets.chomp.to_i
(0...a+1).each do |i|
    sa = n - i
if sa % 500 == 0
    puts "Yes"
    exit
end
end
puts "No"