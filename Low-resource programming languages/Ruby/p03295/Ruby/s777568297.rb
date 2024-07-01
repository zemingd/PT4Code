n, m = gets.split.map(&:to_i)
isla = Array.new(n, 0)
brid = Array.new(n, 0)

m.times do |i|
  a, b = gets.split.map(&:to_i)
  isla[a - 1] = 1
  isla[b - 1] = 2
  brid[a - 1] = b - 1
  #1:left 2:right
end

stack = []
ans   = 0

#p isla, brid

for i in 0 .. n - 1
  if isla[i] == 1
    stack << i
  elsif isla[i] == 2
    ans += 1
    while stack.size > 0
      isla[brid[stack.shift]] = 0
    end
  end
  #p stack, ans, isla
end

puts ans
