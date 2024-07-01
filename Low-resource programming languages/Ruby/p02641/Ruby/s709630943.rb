x, n = gets.chomp.split.map(&:to_i)
n = gets.chomp.split.map(&:to_i)

int = n.min_by{|num| (num - x).abs}

array = (1..x).to_a

array.each do |e|
  array.delete(e) if n.include?(e)
end

puts array.max