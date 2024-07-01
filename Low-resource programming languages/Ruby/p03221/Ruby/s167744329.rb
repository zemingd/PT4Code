N, M = gets.split.map(&:to_i)

C = []
D = Hash.new {|h, i| h[i] = {}}
M.times do |i|
  tmp = gets.split.map(&:to_i)
  C << tmp
  D[tmp[0]][tmp[1]] = nil
end 

D.each do |k, v|
  v.keys.sort.each.with_index(1) do |x, i|
    v[x] = i   
  end
end

C.each do |px, y|
  puts "%012d" % (px * 1000000 + D[px][y])
end