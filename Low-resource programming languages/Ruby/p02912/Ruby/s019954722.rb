N,M=gets.chomp.split.map(&:to_i)
ARY=gets.chomp.split.map(&:to_i).sort

M.times do
  x=0
  b=N.pop
  c=b/2

  min_idx=0
  max_idx=N-1

  until (max_idx - min_idx) <= 1 do
    idx = (min_idx+max_idx)/2
  
    if c > N[idx]
      min_idx = idx
      x = max_idx
    elsif c < N[idx]
      max_idx = idx
      x = max_idx
    else
      x = idx
      break
    end
  end
  
  N.insert(x, c)
end

puts ARY.inject(&:+)