def distance p1, p2
  (p1[:x] - p2[:x]).abs + (p1[:y] - p2[:y]).abs
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
  center_candidates.reject!{|item| item[:x] == base_item[:x] and item[:y] == base_item[:y]} if base_item[:h] == 0
  
  ((i + 1)..(xyh.size - 1)).each do |j|
    compare_item = xyh[j]
    center_candidates.reject!{|item| item[:x] == compare_item[:x] and item[:y] == compare_item[:y]} if compare_item[:h] == 0

    if base_item[:h] == 0 and compare_item[:h] == 0
      # do nothing...
    elsif compare_item[:h] == 0 or base_item[:h] == 0
      non_zero_item = if compare_item[:h] == 0
        base_item
      else
        compare_item
      end
    
      dist = distance(base_item, compare_item)
      center_candidates.select!{|item| 2 * distance(non_zero_item, item) < dist - non_zero_item[:h]}
    else
      diff_h = compare_item[:h] - base_item[:h]
      center_candidates.select!{|item| distance(item, base_item) - distance(item, compare_item) == diff_h}
    end
  end
end

center = center_candidates.first
center_height = calc_height(center, xyh.first)
puts "#{center[:x]} #{center[:y]} #{center_height}"
