N, Q = gets.chomp.split.map(&:to_i)
S = gets.chomp
p =[]
#
(0..S.length-1).each do |x|
  p << x if S[x,2] == 'AC'
end
#
Q.times do
  l, r = gets.chomp.split.map(&:to_i)
  z = p.reduce(0) do |sum, pos|
    sum + ((l-1 <= pos && pos+1 <= r-1) ? 1 : 0)
  end
  puts z
end