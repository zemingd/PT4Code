gets
mtx = []
while gets
  gs = $_.chomp.split('')
  mtx << gs if gs.uniq != ['.']
end

ans = []
mtx.transpose.each do |l|
  ans << l if l.uniq != ['.']
end

ans.transpose.each do |l|
  puts l.join
end