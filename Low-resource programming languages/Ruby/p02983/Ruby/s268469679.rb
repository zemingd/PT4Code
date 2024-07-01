def lscan; gets.split.map(&:to_i); end


L, R = lscan

if L % 2019 == 0 || R % 2019 == 0
  p 0
  exit 0
end

if L / 2019 < R / 2019
  p 0
  exit 0
end

best = 2019
(L..R).to_a.combination(2) do |l, r|
  best = [best, l*r%2019].min
end

p best

