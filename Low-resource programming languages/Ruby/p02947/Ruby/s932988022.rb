N = gets.strip.to_i
s = []
N.times do |n|
  s.push gets.strip.split('').sort!.join
end
c = 0
s.combination(2).each do |p|
  c += 1 if p[0] == p[1]
end

puts c