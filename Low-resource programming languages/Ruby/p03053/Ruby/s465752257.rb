def s()
  gets().chomp
end
def li()
  gets.split.map(&:to_i)
end

h, w = li()
costs = Array.new(h)
blacks = []

h.times {|i|
  str = s()
  tmp = Array.new(w,nil)
  w.times { |j|
    if str[j] == "#"
      blacks << [i, j]
      tmp[j] = 0
    end
  }
  costs[i] = tmp
}

max=0

while !blacks.empty?
  i, j =blacks.pop()
  cur = costs[i][j] + 1
  if i > 0 and costs[i-1][j]==nil
    costs[i-1][j] = cur
    blacks.unshift([i-1, j])
    max = max > cur ? max : cur
  end
  if i < h-1 and costs[i+1][j]==nil
    costs[i+1][j] = cur
    blacks.unshift([i+1, j])
    max = max > cur ? max : cur
  end
  if j > 0 and costs[i][j-1]==nil
    costs[i][j-1] = cur
    blacks.unshift([i, j-1])
    max = max > cur ? max : cur
  end
  if j < w-1 and costs[i][j+1]==nil
    costs[i][j+1] = cur
    blacks.unshift([i, j+1])
    max = max > cur ? max : cur
  end
end

p max