h, w = gets.strip.split.map(&:to_i)
aa = readlines.map {|line| line.strip.split('') }

def blacken(aa)
  h=aa.length
  w = aa.first.length
  d = [0, 1, 0, -1]

  targets = []
  h.times do |i|
    w.times do|j|
      if aa[i][j]=='#'
        4.times do |idx|
          y, x = [i+d[idx], j+d[idx^1]]
          next if !((0...h)===y) || !((0...w)===x) || aa[y][x]=='#'
          targets.push( [y, x] )
        end
      end
    end
  end

  targets.each do |y, x|
    aa[y][x]='#'
  end

  aa
end

def all_black?(aa)
  aa.all? {|line| line.all?{|e| e=='#' } }
end


result = 0
while true
  if all_black?(aa)
    p result; exit
  end
  aa = blacken(aa)
  result += 1
end



