n, m = gets.split(" ").map(&:to_i)
ary = []
n.times do
  ary << gets.split(" ").map(&:to_i)
end

likes = ary[0][1..-1]

ary.each do |x|
    likes = likes & x[1..-1]
end

puts likes.size
