def factorial(number)
  if number.zero?
    1
  else
    number * factorial(number - 1)
  end
end

N = gets
N = N.strip
map = Hash.new
map.default = 0
N.to_i.times do 
  s = gets
  map[s.strip.chars.sort.join] += 1
end
ans = 0

map.each_value{|v|
  if v >= 2 then
    ans += factorial(v)/factorial(v-2)/2
  end
}
p ans

