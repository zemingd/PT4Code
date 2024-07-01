N,M=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
c.sort_by!{|i,j| j }.reverse!
A.sort!
sum=0
M.times do |i|
  break if A.empty? || A[0]>c[i][1]
  b = 0
  c[i][0].times do |j|
    break if A[j]>c[i][1]
    b += 1
  end
  A.shift(b)
  sum += c[i][1]*b
end
puts (A.inject(:+)+sum)
