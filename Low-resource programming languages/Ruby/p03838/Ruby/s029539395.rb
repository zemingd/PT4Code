x,y = gets.chomp.split(" ").map(&:to_i)
ans = 10**10
if x*y > 0
  if x < y
    ans = y-x
  else
    ans = x-y+2
  end
elsif x*y < 0           
  ans = (x.abs-y.abs).abs+1
elsif x < y
  ans = y-x
else
  ans = x-y+1
end
puts ans