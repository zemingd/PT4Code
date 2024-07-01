N,M = gets.split.map(&:to_i)
rh = {}
N.times { |i| rh[i+1] = 0 }
M.times do
  ab = gets.split.map(&:to_i)
  ab.each { |i| rh[i] += 1 }
end
puts rh.sort.map { |k,v| v }