n, m, l = gets.split.map(&:to_i)
mat1 = []
mat2 = []
(1..n).each { |_x| mat1 << gets.split.map(&:to_i) }
(1..m).each { |_x| mat2 << gets.split.map(&:to_i) }
 
ans = []
(0..n - 1).each do |rx|
  v = []
  (0..m - 1).each do |mx|
    (0..l - 1).each do |cx|
      v[rx][mx] += mat1[rx][mx] * mat2[mx][cx]
    end
  end
  ans << v
end
 
ans.each { |row| puts row.join(' ') }