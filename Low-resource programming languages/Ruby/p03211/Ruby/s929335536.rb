ans = Float::INFINITY
gets.chomp.split("").each_cons(3) do |a|
  ans = [ans,(a.join.to_i - 753).abs].min
end
puts ans
