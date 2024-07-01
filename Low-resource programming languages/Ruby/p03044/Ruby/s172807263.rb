n = gets.chomp.to_i

kyori = {}
hen = Array.new(n+1){Array.new()}
lines = readlines
lines.each do |line|
  u,v,w = line.chomp.split().map(&:to_i)
  kyori[[u,v]] = w
  kyori[[v,u]] = w
  hen[u].push v
  hen[v].push u
end

ans = Array.new(n+1, nil)
ans[1] = 1
q = [1]
while !q.empty?
  ten = q.shift
  hen[ten].each do |i|
    next unless ans[i].nil?
    q.push i if
      if ans[ten] == 1 && kyori[[ten,i]].even?
        ans[i] = 1
      elsif ans[ten] == 1 && kyori[[ten,i]].odd?
        ans[i] = 0
      elsif ans[ten] == 0 && kyori[[ten,i]].even?
        ans[i] = 0
      elsif ans[ten] == 0 && kyori[[ten,i]].odd?
        ans[i] = 1
      end
  end
end

ans.each do |an|
  puts an
end
