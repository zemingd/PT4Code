x, y = gets.split.map(&:to_i)
G = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
flag = true
G.each { |g| flag = g.include?(x) && g.include?(y) }
puts flag ? ‘Yes’ : ‘Nox, y = gets.split.map(&:to_i)
G = [[1,3,5,7,8,10,12],[4,6,9,11],[2]]
flag = false
G.each do |g|
  flag = g.include?(x) && g.include?(y)
  break if flag
end
puts flag ? 'Yes' : 'No'