n, m = gets.chomp.split.map(&:to_i)
roads = []
m.times do
    s, t = gets.chomp.split.map(&:to_i)
    roads << s << t
end
answer = []
1.upto(n) do |i|
    answer << roads.count(i)
end
puts answer
