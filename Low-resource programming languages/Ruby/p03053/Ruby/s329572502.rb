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
  d = [0, 1, 0, -1]
  next_targets = []

  targets.each do |i, j|
    if aa[i][j]==1
      
      4.times do |idx|
        y, x = [i+d[idx], j+d[idx^1]]
        next if y<0 || y>=h || x<0 || x>=w || aa[y][x]==1
        next_targets.push( [y, x] )
        aa[y][x]=1
      end

    end
  end

  next_targets
end

b_c = targets.length

result = 0
until b_c == h*w
  targets = blacken(h, w, aa, targets)
  b_c += targets.length
  result += 1
end

p result



def blacken(h, w, aa, targets)
  next_targets = []
  d = [0, 1, 0, -1]

  targets.each do |i, j|
    if aa[i][j]==1


    end
  end

  next_targets
end
