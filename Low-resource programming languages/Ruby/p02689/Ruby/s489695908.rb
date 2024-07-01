N,M=gets.split.map(&:to_i)

H=gets.split.map(&:to_i)

mtx = Array.new(N, 1)
M.times do
  a,b=gets.split.map(&:to_i)
  if H[a-1] == H[b-1]
    mtx[a-1] = 0
    mtx[b-1] = 0
  elsif H[a-1] > H[b-1]
    mtx[b-1] = 0
  else
    mtx[a-1] = 0
  end
end
puts mtx.reduce(:+)
