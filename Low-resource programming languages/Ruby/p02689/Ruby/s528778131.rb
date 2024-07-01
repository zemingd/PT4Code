N,M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

h = Hash.new
M.times do |i|
  a,b = gets.split.map(&:to_i)
  h[a] = [H[a-1]] if h[a].nil?
  h[b] = [H[b-1]] if h[b].nil?
  h[a] << H[b-1]
  h[b] << H[a-1]
end

cnt = 0
N.times do |n|
  cnt += 1 and next if h[n].nil?
  cnt += 1 if H[n] > h[n].max
end

p cnt
