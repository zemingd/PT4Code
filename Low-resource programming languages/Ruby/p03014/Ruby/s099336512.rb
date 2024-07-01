h, w = gets.split.map(&:to_i)
w+=1

s = $<.map {|line| line.strip.split('')}

a = Array.new(h+1) { Array.new(w+1,0) }
blockers=Array.new(w+1) { Array.new }

h.times do |i|
  l=0
  w.times.select {|j| s[i][j]!='.' }.each do |j|
    blockers[j] << i
    (j-l).times {|c_j| a[i][c_j+l] = j-l }
    l=j+1
  end
end

w.times { |k| blockers[k] << h }

blockers.each_with_index do |blocks, height|
  l=0
  blocks.each do |b|
    (b-l).times {|j| a[j+l][height] += b-l }
    l = b+1
  end
end

p a.map(&:max).push(1).max-1
