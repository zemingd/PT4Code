H, W = gets.split.map(&:to_i)

yscore = Array.new(W + 1, 0)
cscore = Array.new(W + 1, 0)
ans = 0

def larger(x, y)
  x > y ? x : y 
end

H.times do
  field = gets.chomp + '#'
  i = 0
  while i < W
    if field[i] == '#'
      yscore[i] = 0
      ans = cscore[i] if cscore[i] > ans 
      cscore[i] = 0
      i += 1
    else  
      ia = i + 1
      c = 1
      loop {
        if field[ia] == '#'
          yscore[ia] = 0
          ans = cscore[ia] if cscore[ia] > ans 
          cscore[ia] = 0
          break
        end 
        ia += 1
        c += 1
      }
      for ib in (i...ia)
        yscore[ib] += 1
        cscore[ib] =larger(c + yscore[ib], cscore[ib] + 1)
      end 
      i = ia + 1
    end
  end
end
puts larger(ans, cscore.max - 1) 