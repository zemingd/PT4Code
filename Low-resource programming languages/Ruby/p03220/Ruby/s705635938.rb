n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
min = 10 ** 9
ans = nil
h.each_with_index do |x,i|
  if min > ( t - x*0.006 - a).abs
    min = ( t - x*0.006 - a).abs
    ans = i+1
  end
end
p ans