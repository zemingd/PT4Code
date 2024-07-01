h, w = gets.chomp.split(" ").map(&:to_i)
grids = []
h.times do
  grids << gets.chomp.split("").map(&:to_s)
end

grids.delete_if {|item| item.uniq.size == 1 && item.uniq[0] == "."}

transposed_grids = grids.transpose

transposed_grids.delete_if {|item| item.uniq.size == 1 && item.uniq[0] == "."}

grids = transposed_grids.transpose

grids.each do |grid|
  puts grid.join
end