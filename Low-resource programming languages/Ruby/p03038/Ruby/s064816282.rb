N,M=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
c.sort_by!{|i,j| j }.reverse!

M.times do |i|
  next if A.min>c[i][1]
  c[i][0].times do |j|
    break if A.min>c[i][1]
    A[(A.index(A.min))]=c[i][1]
  end
end
puts A.sum
