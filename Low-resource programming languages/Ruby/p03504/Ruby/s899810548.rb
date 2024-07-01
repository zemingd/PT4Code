N, C = gets.split.map(&:to_i)

stcs = N.times.map { gets.split.map(&:to_i) }
sorted = stcs.sort_by do |(s, t, _)|
  s
end
ch_tvshows = Array.new(C) { [] }
sorted.each do |(s, t, c)|
  c -= 1
  last_tvs = ch_tvshows[c].last
  if last_tvs && last_tvs[1] == s
    # merge
    ch_tvshows[c][-1] = [last_tvs[0], t]
  else
    ch_tvshows[c].push([s - 1, t])
  end
end
imos = Array.new(10 ** 5 + 1, 0)
ch_tvshows.flatten(1).each do |(s, t)|
  imos[s] += 1
  imos[t] -= 1
end
max = 0
current = 0
imos.each do |n|
  current += n
  max = current if current > max
end
puts max
