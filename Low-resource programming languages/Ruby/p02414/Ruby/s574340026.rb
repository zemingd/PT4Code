n, m, l = gets.chomp.split(/\s/).map(&:to_i)

mat_1 = []
mat_2 = []

n.times{ mat_1 << gets.chomp.split(/\s/).map(&:to_i) }
m.times{ mat_2 << gets.chomp.split(/\s/).map(&:to_i) }

n.times do |i|
  l.times do |j|
    sum = 0
    m.times{ |k| sum += mat_1[i][k] * mat_2[k][j] }
    print "\s" unless j == 0
    print sum
  end
  puts ''
end