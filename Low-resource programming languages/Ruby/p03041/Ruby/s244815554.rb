require 'set'
require 'tsort'

n, m = gets.chomp!.split(" ").map!(&:to_i)
xyz = Array.new(m) {|index| Array.new(0, m) }

xyzs = {}
xyz.each.with_index(1) do |xyz, i|
    x_i, y_i, z_i = gets.chomp!.split(" ").map!(&:to_i)
    xyzs[i] = {
        x: x_i,
        y: y_i,
        z: z_i,
    }
end

cards = {}
1.upto(n) do |i, _|
    cards[i] = Set[]
end

xyzs.each do |i, xyz2|
    cards[xyz2[:x]] << xyz2[:y] 
    cards[xyz2[:y]] << xyz2[:x]
end

each_node = each_node = lambda {|&b| cards.each_key(&b) }
each_child = lambda {|k, &b| cards[k].each(&b) }
x = TSort.strongly_connected_components(each_node, each_child)

puts x.size
