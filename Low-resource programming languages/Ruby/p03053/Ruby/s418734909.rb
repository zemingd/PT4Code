h, w = gets.strip.split.map(&:to_i)
aa = readlines.map {|line| line.strip.split('').map {|e| e=='#' ? 1 : 0} }

def blacken(aa, targets)
  h=aa.length
  w = aa.first.length
  d = [[0,1], [1,0], [0,-1], [-1,0]]
  next_targets = []
  
  targets.each do |i, j|
    if aa[i][j]==1

      y, x = [i, j+1]
      next_targets.push( [y, x] ) if (y>=0 && y<h && x>=0 && x<w  && aa[y][x].zero?)

      y, x = [i+1, j]
      next_targets.push( [y, x] ) if (y>=0 && y<h && x>=0 && x<w  && aa[y][x].zero?)

      y, x = [i, j-1]
      next_targets.push( [y, x] ) if (y>=0 && y<h && x>=0 && x<w  && aa[y][x].zero?)

      y, x = [i-1, j]
      next_targets.push( [y, x] ) if (y>=0 && y<h && x>=0 && x<w  && aa[y][x].zero?)

    end
  end

  next_targets = next_targets.uniq
  next_targets.each do |y, x|
    aa[y][x]=1
  end

  next_targets
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



