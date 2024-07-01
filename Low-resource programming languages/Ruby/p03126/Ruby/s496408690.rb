n, _m = gets.split.map(&:to_i)
likes = {}
n.times do |_i|
  gets.split.map(&:to_i)[1..].each do |f|
    likes[f] = (likes[f] || 0) + 1
  end
end
puts likes.select { |_k, v| v == n }.size
