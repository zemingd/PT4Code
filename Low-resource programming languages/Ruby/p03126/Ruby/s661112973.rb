n, m = gets.chomp.split(' ').map(&:to_i)
list = n.times.map do
  l = gets.chomp.split(' ').map(&:to_i)
  l.shift # k
  l
end

all_likes = Array.new(m + 1) { true }
all_likes[0] = false

list.each do |l|
  1.upto(m + 1).each do |i|
    next unless all_likes[i]
    unless l.include?(i)
      all_likes[i] = false
    end
  end
end

puts all_likes.count { |t| t }
