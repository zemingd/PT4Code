def distance p1, p2
  (p1[:x] - p2[:x]).abs + (p1[:y] - p2[:y]).abs
end

def diff p1, p2
  {:x => p2[:x] - p1[:x], :y => p2[:y] - p1[:y]}
end
def inner_product v1, v2
  v1[:x]*v2[:x] + v1[:y]*v2[:y]
end

def calc_height p_target, p_known
  distance(p_target, p_known) + p_known[:h]
end


N_range = 0..100
center_candidates = N_range.map{|x| N_range.map{|y| {:x => x, :y => y}}}.flatten(1)


N = STDIN.gets.chomp.to_i
xyh = N.times.map do 
  data = STDIN.gets.chomp.split(" ").map(&:to_i)
  {:x => data[0], :y => data[1], :h => data[2]}
end


xyh.each_with_index do |base_item, i|

  ((i + 1)..(xyh.size - 1)).each do |j|

    compare_item = xyh[j]
    if base_item[:h] == compare_item[:h]
      center_candidates.reject!{|item| distance(item, base_item) != distance(item, compare_item)}
    elsif base_item[:h] > compare_item[:h]
      base_vec = diff(base_item, compare_item)
      center_candidates.select!{|item| inner_product(base_vec, diff(base_item, item)) <= 0}
    else
      base_vec = diff(compare_item, base_item)
      center_candidates.select!{|item| inner_product(base_vec, diff(compare_item, item)) <= 0}
    end

  end

end

center = center_candidates.first
center_height = calc_height(center, xyh.first)
puts "#{center[:x]} #{center[:y]} #{center_height}"
