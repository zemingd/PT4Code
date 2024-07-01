n, m = gets.chomp.split.map(&:to_i)

prefs = []
uniq_pref = []

(1..m).to_a.each do |i|
  p, y = gets.chomp.split.map(&:to_i)
  pref = {index: i, p: p, y: y, id: ''}
  prefs.push pref
  uniq_pref.push p
end

uniq_pref.uniq.each do |i|
  prefs.select{|pref| pref[:p] == i}.sort_by{|pref| pref[:y]}.each_with_index do |pref, j|
    pref[:id] = format('%06d', i) + format('%06d', j+1)
  end
end

prefs.sort_by{|pref| pref[:index]}.each do |pref|
  puts pref[:id]
end
