H, W = gets.split.map &:to_i
S = (1..H).map { gets.scan(/./) }

def g(h, w)
  [[-1, 0], [1, 0], [0, -1], [0, 1]].each do |dh, dw|
    hh = h + dh
    ww = w + dw
    if 0<=hh and hh<H and 0<=ww and ww<W and S[hh][ww]=='#'
      return true
    end
  end
  false
end

def f
  for h in 0...H
    for w in 0...W
      if S[h][w]=='#'
        p h, w
        unless g(h, w)
          return false
        end
      end
    end
  end

  true
end

puts f ? 'Yes' : 'No'
