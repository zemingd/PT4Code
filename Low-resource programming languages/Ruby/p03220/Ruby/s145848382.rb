N = gets.to_i
T, A = gets.split().map(&:to_i)
Hs = gets.split().map(&:to_i)
diffs = Hs.map do |h|
  tmp = T - (h*0.006)
  (A-tmp).abs
end
puts diffs.index(diffs.min)+1
