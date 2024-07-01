n = gets.to_i
as = gets.split.map(&:to_i)
MAX = 2 * 10**5

cs = Array.new(MAX + 1, 0)
# それぞれの数が配列に何個あるか数える
as.each do |a|
  cs[a] += 1
end


sum = cs.inject(0) do |r, v|
  r + v * (v - 1) / 2
end

as.each do |a|
  diff = (cs[a] - 1) # c * (c - 1) / 2 - (c - 1) * (c - 2) / 2
  puts sum - diff
end