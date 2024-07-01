n = gets.to_i

n.times.map { |i| [(i + 1), *gets.split] }
  .sort_by! { |i, k, v| [k, -v.to_i] }
  .each do |i, _k, _v|
  puts i
end
