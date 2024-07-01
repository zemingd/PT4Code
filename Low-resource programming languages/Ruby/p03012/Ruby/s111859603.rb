N = gets.to_i
W = gets.split(' ').map(&:to_i)

mindif = 0
1.upto(N-1) do |i|
  a = W[0..i-1].inject(:+)
  b = W[i..N-1].inject(:+)
  dif = (a-b).abs
  if mindif == 0 || dif < mindif
    mindif = dif
  end
end

p mindif