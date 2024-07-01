N,M=gets.chomp.split.map(&:to_i)
A=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
A.sort!
M.times do |i|
  c[i][0].times do |j|
    break if A[j]>c[i][1]
    A[j]=c[i][1]
  end
  A.sort!
end
puts A.sum