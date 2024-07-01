h, w = gets.split.map(&:to_i)
mat=Array.new(h){gets.chomp.split("")}
mat.delete(["."]*mat.transpose.length)
mat = mat.transpose
mat.delete(["."]*mat.transpose.length)
puts mat.transpose.map(&:join)