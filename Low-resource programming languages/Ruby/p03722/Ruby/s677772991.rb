N, M = gets.split.map(&:to_i)
e = {}
M.times do
  a, b, c = gets.split.map(&:to_i)
  e[a] ||= {}
  e[a][b] = c
end

def inf_loop?(path, e)
  loop_path = path.group_by(&:itself).select {|k,v| v.size >= 2 }.keys
  loop_path << loop_path[0]
  loop_path.each_cons(2).map { |i,j| e[i][j] }.inject(:+) > 0
end

arr = [[1, 0, [], false]]
ans = nil
arr.each do |a, score, path, loop|
  (e[a] || []).each do |b, c|
    if b == N && (ans.nil? || score + c > ans)
      ans = score + c
    end
    if b == N && path.size != path.uniq.size
      if inf_loop?(path, e)
        puts "inf"
        exit
      end
    end
    arr << [b, score + c, path + [a]]
  end
end

p ans
