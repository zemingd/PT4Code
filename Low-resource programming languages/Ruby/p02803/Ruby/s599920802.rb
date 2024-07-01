h, w = gets.chop.split.map(&:to_i)
s = []

h.times do
  ws = gets.chop.chars
  s << ws
end

max = 0
h.times do |i_h|
  w.times do |i_w|
    next if s[i_h][i_w] == '#'

    cost = Array.new(h) { Array.new(w, nil) }
    cost[i_h][i_w] = 0
    adds = [[i_h, i_w]]
    loop do
      break if adds.empty?

      new_adds = []
      adds.each do |a|
        p = cost[a[0]][a[1]]
        if a[0] > 0 && s[a[0]-1][a[1]] == '.' && cost[a[0]-1][a[1]].nil?
          cost[a[0]-1][a[1]] = p + 1
          new_adds << [a[0]-1, a[1]]
        end
        if a[0] < h-1 && s[a[0]+1][a[1]] == '.' && cost[a[0]+1][a[1]].nil?
          cost[a[0]+1][a[1]] = p + 1
          new_adds << [a[0]+1, a[1]]
        end
        if a[1] > 0 && s[a[0]][a[1]-1] == '.' && cost[a[0]][a[1]-1].nil?
          cost[a[0]][a[1]-1] = p + 1
          new_adds << [a[0], a[1]-1]
        end
        if a[1] < w-1 && s[a[0]][a[1]+1] == '.' && cost[a[0]][a[1]+1].nil?
          cost[a[0]][a[1]+1] = p + 1
          new_adds << [a[0], a[1]+1]
        end
      end
      adds = new_adds
    end
    max = [max, cost.flatten.compact.max].max
  end
end

puts max