N = gets.to_i
T,A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

min_d = 100000
min_di = 0
N.times do |i|
  t = T-(H[i]*0.006)
  if min_d > (A-t).abs
    min_d = (A-t).abs
    min_di = i
  end
end
puts min_di+1