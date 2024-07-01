def distance p1, p2
  (p1[:x] - p2[:x]).abs + (p1[:y] - p2[:y]).abs
end

N = STDIN.gets.chomp.to_i
xyh = N.times.map do 
  data = STDIN.gets.chomp.split(" ").map(&:to_i)
  {:x => data[0], :y => data[1], :h => data[2]}
end
non_zero_xyh = xyh.select{|item| item[:h] > 0}.first

result = nil
(0..100).each do |cx|
  (0..100).each do |cy|
    center = {:x => cx, :y => cy}
    dist = distance(center, non_zero_xyh)
    center[:h] = non_zero_xyh[:h] + dist

    if xyh.all?{|item| [center[:h] - distance(item, center), 0].max == item[:h]}
      result = center
      break
    end
  end

  break unless result.nil?
end

puts "#{result[:x]} #{result[:y]} #{result[:h]}"
