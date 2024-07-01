x,k,d = gets.split.map(&:to_i)

bef = (x.abs / d).to_i
if k <= bef
  puts x.abs - d*k
else
  before = x.abs-bef*d
  over = (x.abs-(bef+1)*d).abs
  r = 0
  if before <= over
    r = bef % 2
  else
    r = (bef+1) % 2
  end

  if k%2 == r
    puts [before,over].min
  else
    puts [before,over].max
  end
end