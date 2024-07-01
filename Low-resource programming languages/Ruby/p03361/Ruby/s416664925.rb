def check(mtx, i, j)
  mtx[i][j] == '#' &&
    (mtx[i][j - 1] == '#' || mtx[i][j + 1] == '#' ||
    mtx[i - 1][j] == '#' || mtx[i + 1][j] == '#')
end

def main
  h, w = gets.split.map(&:to_i)
  mtx = []
  mtx << '.' * (w+2)
  h.times do
    mtx << '.' + gets.chomp + '.'
  end
  mtx << '.' * (w+2)
  mtx_t= Array.new(h) do [] end
  for i in (0...h)
    for j in (0...w)
        mtx_t[i][j] = check(mtx, i+1, j+1)
    end
  end
  r = if mtx_t.flatten.count(true) == mtx.map{|i|i.count('#')}.reduce(:+)
    'Yes'
  else
    'No'
  end
  puts r
end

main