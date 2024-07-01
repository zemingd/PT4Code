N,M=gets.split.map(&:to_i)

H=gets.split.map(&:to_i)

mtx = N.times.map{Array.new(N, false)}
M.times do
  a,b=gets.split.map(&:to_i)
  mtx[a-1][b-1]=true
  mtx[b-1][a-1]=true
end
res = 0
done=Array.new(N, false)
mtx.each_with_index do |arr, idx|
  next if done[idx]
  res += 1
  h = H[idx]
  arr.each_with_index do |path, i|
    if path
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
