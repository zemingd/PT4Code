n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
m = {}
a.each do |x|
  if m[x]
    m[x] += 1
  else
    m[x] = 1
  end
end

m = m.sort_by { |_, v| v }


ret = 0

[0, m.size - k].max.times { |i|
  ret += m[i][1]
}

puts ret
