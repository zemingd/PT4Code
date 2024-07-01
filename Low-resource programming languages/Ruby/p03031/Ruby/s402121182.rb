n, m = gets.split.map &:to_i
lights = m.times.map {gets.split.map &:to_i}
ps = gets.split.map &:to_i

cnt = (1 << n).times.count do |state|
  lights.each_with_index.all? do |(k, *switches), l|
    switches.count { |j| state[j-1] == 1 } % 2 == ps[l]
  end
end
p cnt