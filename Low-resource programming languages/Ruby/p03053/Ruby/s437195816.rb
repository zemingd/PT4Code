h, w = gets.strip.split.map(&:to_i)

aa = Array.new(h) { [0]*w }
targets = []

h.times do |i|
  gets.chomp.each_char.with_index do |c,j|
    next if c == '.'
    aa[i][j] = 1
    targets << [i, j]
  end
end

def blacken(h, w, aa, targets)
  next_targets = []

  targets.each do |i, j|
    if aa[i][j]==1

      y, x = [i, j+1]
      if (x<w && aa[y][x]==0)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i+1, j]
      if (y<h && aa[y][x]==0)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i, j-1]
      if (x>=0 && aa[y][x]==0)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i-1, j]
      if (y>=0 && aa[y][x]==0)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

    end
  end

  next_targets.uniq
end

b_c = targets.length

result = 0
until b_c == h*w
  targets = blacken(h, w, aa, targets)
  b_c += targets.length
  result += 1
end

p result



