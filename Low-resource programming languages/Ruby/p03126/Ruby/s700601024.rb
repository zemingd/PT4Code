n, m = gets.chomp.split.map(&:to_i)
likes = Array.new(m, 0)

n.times do
  input = gets.chomp.split.map(&:to_i)
  input[1..-1].each do |i|
    likes[i-1] += 1
  end
end

puts likes.select {|l| l == n}.length
