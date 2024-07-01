N,M = gets.chomp.split(" ").map(&:to_i)
list = Array.new(N+1){Array.new}
ans = Array.new(M)
p = Array.new(M)
y = Array.new(M)
M.times do |i|
  p[i],y[i] = gets.chomp.split(" ").map(&:to_i)
  list[p[i]] << [y[i], i]
end
(N+1).times do |i|
  list[i] = list[i].sort_by{|x| x[0]}
  x = 1
  list[i].each do |v|
    str_p = i.to_s
    j = 6-str_p.length
    j.times do
      str_p = "0" + str_p
    end
    str_x = x.to_s
    j = 6-str_x.length
    j.times do
      str_x = "0" + str_x
    end
    ans[v[1]] = str_p + str_x
    x += 1
  end
end
ans.each do |x|
  puts x
end