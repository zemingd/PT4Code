N,M=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
c.sort_by!{|i,j| j }.reverse!
A.sort!

M.times do |i|
  break if A[0]>c[i][1]
  # c[i][0].times do |j|
  #   break if A[0]>c[i][1]
  #   A.shift()
  #   A.push(c[i][1])
  # end
  b = 0
  c[i][0].times do |j|
    break if A[j]>c[i][1]
    b += 1
  end
  A.shift(b)
  A.push(*([c[i][1]]*b))
end
puts A.inject(:+)