n, m, l = STDIN.gets.split(' ').map(&:to_i)

mat1 = []
n.times do |i|
  mat1 << STDIN.gets.split(' ').map(&:to_i)
end

mat2 = []
m.times do |i|
  mat2 << STDIN.gets.split(' ').map(&:to_i)
end

n.times do |i|
  row = []
  l.times do |j|
    # mat1 ??? i ?????? * mat2 ??? j ??????
    sum = 0
    m.times do |k|
      sum += mat1[i][k] * mat2[k][j]
    end
    row << sum
  end
  puts row.join(' ')
end