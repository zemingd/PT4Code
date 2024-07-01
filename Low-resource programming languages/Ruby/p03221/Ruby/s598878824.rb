n, m = gets.chop.split.map(&:to_i)
ps, ys = [], []
arr = []
m.times do |i|
    line = gets.chop.split.map(&:to_i)
    arr << {p: line[0], y: line[1], i: i, ans: ''}
    # ps << line[0]
    # ys << line[1]
end
arr.sort! do |a, b|
    a[:y] <=> b[:y]
  end


counts = Array.new(1000000, 1)
m.times do |i|
    arr[i][:ans] = format('%06d', arr[i][:p]) + format('%06d', counts[arr[i][:p]])
    counts[arr[i][:p]] += 1
end
arr.sort! do |a, b|
    a[:i] <=> b[:i]
  end

m.times do |i|
    puts arr[i][:ans]
end