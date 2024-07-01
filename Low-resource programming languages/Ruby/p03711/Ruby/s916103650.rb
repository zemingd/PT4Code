aGroup = [1,3,5,7,8,10,12].to_a
bGroup = [4,6,9,11].to_a
x,y=gets.chomp.split.map(&:to_i)
puts (aGroup.include?(x) && aGroup.include?(y)) || (bGroup.include?(x) && bGroup.include?(y)) ? "Yes" : "No"