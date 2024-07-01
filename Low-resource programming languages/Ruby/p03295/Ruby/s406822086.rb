(N, M) = gets.split.map(&:to_i)
bridges = Array.new(N - 1, true)

data = []
M.times do
  data << gets.split.map(&:to_i)
end

data.sort_by! do |a|
  a[1]
end

c = 0
data.each do |a|
  i = a[1] - 1
  pass = false
  while i >= a[0]
    unless bridges[i - 1]
      pass = true
      break
    end
    i -= 1
  end

  unless pass
    bridges[a[1] - 2] = false
    c += 1
  end
end

puts c
