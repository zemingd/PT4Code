n, k = gets.split.map(&:to_i)
h = Array.new(n){gets.to_i}.sort
l=0
ans = 1<<30

(0..h.length-k).each do |i|
  delta = (h[k+i-1] - h[i]).abs
  if delta < ans
    ans = delta
  end
end

p ans
