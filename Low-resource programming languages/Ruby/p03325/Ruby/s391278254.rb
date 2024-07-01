N = gets.to_i
# a&-a : LSB(Lowest Set Bit) 
puts gets.split.map(&:to_i).map{|a| (a&-a).bit_length - 1}.inject(&:+)
