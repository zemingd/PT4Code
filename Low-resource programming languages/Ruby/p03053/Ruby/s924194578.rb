h, w = gets.strip.split.map(&:to_i)
aa = readlines.map {|line| line.strip.split('').map {|e| e=='#' ? 1 : 0} }
@h = h
@w = w

def blacken(aa, targets)
  d = [[0,1], [1,0], [0,-1], [-1,0]]
  next_targets = []
  
  targets.each do |i, j|
    if aa[i][j]==1

      y, x = [i, j+1]
      if (x<@w && aa[y][x].zero?)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i+1, j]
      if (y<@h && aa[y][x].zero?)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i, j-1]
      if (x>=0 && aa[y][x].zero?)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

      y, x = [i-1, j]
      if (y>=0 && aa[y][x].zero?)
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

    end
  end

  next_targets.uniq
end

targets = []
h.times do |i|
  w.times do|j|
    targets << [i, j] if aa[i][j]==1
  end
end
b_c = targets.length

result = 0
until b_c == h*w
  targets = blacken(aa, targets)
  b_c += targets.length
  result += 1
end

p result



