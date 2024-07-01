n = gets.to_i
a = gets.split.map(&:to_i)
histo = Hash.new(0)
a.each do |k|
  histo[k] += 1
end
combi = {}
combi2 = {}
histo.each do |k, v|
  combi[k] = v * (v - 1) / 2
  combi2[k] = (v - 1) * (v - 2) / 2
end
combi_sum = combi.values.inject(:+)
a.each do |k|
  puts combi_sum - combi[k] + combi2[k]
end
