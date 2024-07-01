N,M=gets.split.map(&:to_i)

H=gets.split.map(&:to_i)

mtx = Array.new(N).map{Array.new(N, 0)}
M.times do
  a,b=gets.split.map(&:to_i)
  mtx[a-1][b-1]=1
  mtx[b-1][a-1]=1
end
res = 0
done=Array.new(N, false)
mtx.each_with_index do |arr, idx|
  next if done[idx]
  res += 1
  h = H[idx]
  arr.each_with_index do |path, i|
    if path == 1
      if H[i] >= h
        res -= 1
        break
      else
        done[i] = true
      end
    end
  end
end
puts res
