N, M = gets.chomp.split(" ").map(&:to_i)

PYs = M.times.map do |_|
  gets.chomp.split(" ").map(&:to_i)
end

prefs = PYs.inject({}) do |m, v|
  m[v[0]] = [] unless m.key?(v[0])
  m[v[0]].push(v)
  m
end

prefs.each do |pref, v|
  v.sort_by { |v| v[1] }.each.with_index do |v2, i|
    v2.push("#{pref.to_s.rjust(6, "0")}#{(i + 1).to_s.rjust(6, "0")}")
  end
end

PYs.each do |v|
  puts v[2]
end
