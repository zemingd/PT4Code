n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
h.map!{ |x| t - x * 0.006 }

min = 100000000
mini = 0
(1..n).each do |i|
  if min > (a - h[i-1]).abs
    min =  (a - h[i-1]).abs
    mini = i
  end
end

p mini

