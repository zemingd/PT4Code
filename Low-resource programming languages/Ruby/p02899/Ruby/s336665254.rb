N, *AS = $stdin.read.split.map(&:to_i)
=begin
2 3 1
- 1番が来たとき2人
  2番が来たとき3人
  3番が来たとき1人
=end
puts AS.map.with_index(1){|a, idx| [a, idx]}
       .sort_by{|a, idx| a}
       .map{|a, idx| idx}
       .join(" ")