N = gets
N.strip!
map = Hash.new
map.default = 0

N.to_i.times do 
  s = gets
  map[s.strip.chars.sort.join] += 1
end
ans = 0

map.each_value{|v|
  if v >= 2 then
    ans += v * (v-1) / 2
  end
}
p ans

