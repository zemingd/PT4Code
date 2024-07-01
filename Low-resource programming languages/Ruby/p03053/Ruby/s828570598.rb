def s()
  gets().chomp
end
def li()
  gets.split.map(&:to_i)
end

h, w = li()
costs = Array.new(h)
blacks = []
count = 0

h.times {|i|
  str = gets().chomp
  tmp = Array.new(w,nil)
  w.times { |j|
    if str[j] == "#"
      blacks << [i, j]
      tmp[j] = 0
      count += 1
    end
  }
  costs[i] = tmp
}

max=0
while count < h * w
  tmp_blacks = blacks
  blacks = []
  max += 1
  tmp_blacks.each { |i, j|
    cur = costs[i][j] + 1
    if i > 0 and costs[i-1][j]==nil
      costs[i-1][j] = cur
      blacks << [i-1, j]
      count += 1
    end
    if i < h-1 and costs[i+1][j]==nil
      costs[i+1][j] = cur
      blacks <<[i+1, j]
      count += 1
    end
    if j > 0 and costs[i][j-1]==nil
      costs[i][j-1] = cur
      blacks << [i, j-1]
      count += 1
    end
    if j < w-1 and costs[i][j+1]==nil
      costs[i][j+1] = cur
      blacks << [i, j+1]
      count += 1
    end
  }
end

p max