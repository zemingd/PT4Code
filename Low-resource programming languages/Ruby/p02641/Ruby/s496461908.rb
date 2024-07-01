x, n = gets.chomp.split.map(&:to_i)
num = gets.chomp.split.map(&:to_i)

array = (1..100).to_a

num.each do |e|
  array.delete(e)
end

int = array.min_by{|i| (i - x).abs}

puts int
