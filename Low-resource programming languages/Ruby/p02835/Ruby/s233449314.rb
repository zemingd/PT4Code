a = gets.chomp.split(" ").map(&:to_i).inject(:+)
# if a >= 22
#     puts "bust"
# else
#     puts "win"
# end
puts a >= 22 ? "bust" : "win"