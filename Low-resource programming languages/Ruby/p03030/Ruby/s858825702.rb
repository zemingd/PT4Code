N = gets.to_i
s_n = []
N.times do
  s_n << gets.split(' ')
end
s_n_sorted = s_n.sort do |a, b|
  b[1].to_i <=> a[1].to_i
end.sort do |a, b |
  a[0] <=> b[0]
end

ans = []
s_n_sorted.each do |e|
  s_n.each_with_index do |e2, i|
    if e[0] == e2[0] && e[1] == e2[1]
      ans << i + 1
      break
    end
  end
end

ans.each { |n| puts n }
 