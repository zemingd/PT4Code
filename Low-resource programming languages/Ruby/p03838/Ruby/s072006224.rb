x,y = gets.split.map &:to_i

ans = []

if x<y
  ans << y-x
end

ans << 1+(-y-x).abs

if x<0 && y<0 && x>y
  ans << x-y+2
end

p ans.min