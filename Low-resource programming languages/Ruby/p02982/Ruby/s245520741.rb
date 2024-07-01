require 'complex'

n, d = gets.split.map(&:to_i)
spots = []
n.times do
  spots << gets.split.map(&:to_i)
end
ans = 0
0.upto(n - 1) do |index_1|
  0.upto(n - 1) do |index_2|
    next if index_1 == index_2 || index_1 > index_2
    dist = 0
    d.times do |dimention|
      dist += (spots[index_1][dimention].to_f - spots[index_2][dimention].to_f) ** 2
    end
    ans += 1 if Math.sqrt(dist).ceil == Math.sqrt(dist).floor
  end
end
puts ans
