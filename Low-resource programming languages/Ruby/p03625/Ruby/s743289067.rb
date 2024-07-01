_ = gets.to_i
a = gets.split.map(&:to_i)

h = {}
ans = []

a.each do |k|
  if h[k].nil?
    h[k] = 1
    next
  end
  h[k] += 1
end

h = h.sort_by {|k, _| k }.reverse
h.each do |k, v|
  unless v >= 2
    next
  end
  ans.push(k)
end
puts ans[1].nil? ? 0 : ans[0..1].inject(:*)