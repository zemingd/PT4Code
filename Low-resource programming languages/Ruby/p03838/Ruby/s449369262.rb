x,y = gets.split.map &:to_i

add = 0
ans = []

if x>y
  add = 1
  x = -x
end

ans << (-y-x).abs+1
ans << (x-y).abs

p ans.min+add