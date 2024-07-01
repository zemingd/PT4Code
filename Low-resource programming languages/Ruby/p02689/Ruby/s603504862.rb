n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

t = (1..n).to_a.map{|i| [i, true]}.to_h
(1..m).each do |_|
  (a, b) = gets.split.map(&:to_i)
  if h[a-1] < h[b-1]
    t.delete(a)
  elsif h[a-1] > h[b-1]
    t.delete(b)
  else
    t.delete(a)
    t.delete(b)
  end
end

p t.length