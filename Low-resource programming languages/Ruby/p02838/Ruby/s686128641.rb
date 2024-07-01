gets
a = gets.split.map(&:to_i)

sum = 0
70.times do |i|
  n0 = a.count{|x| x[i] == 0}
  n1 = a.count{|x| x[i] == 1}
  #p [i, n0, n1]

  sum += n0*n1*2**i
end

p sum % (10**9 + 7)
