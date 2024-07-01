def lower(h)
  ans = 0
  cur = 0
  1.upto(h.size - 1) do |i|
    if h[i - 1] >= h[i]
      cur += 1
      ans = [ans, cur].max
    else
      cur = 0
    end
  end
  ans
end

n = gets.to_i
h = gets.split.map(&:to_i)

puts lower(h)