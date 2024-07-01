n,h = gets.split.map(&:to_i)
as = = gets.split.map(&:to_i)
as.each do |a|
  h -= a
end

puts h <= 0?"Yes": "No"