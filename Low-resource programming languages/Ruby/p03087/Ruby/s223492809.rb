q = gets.split(" ").map(&:to_i)[1]
ary = gets.chomp.split("")
c = [0]

now = 0
ary.each_with_index do |a, i|
  now += 1 if a == 'C' && ary[i-1] == 'A'
  c << now
end

q.times do
  a, b = gets.chomp.split(" ").map(&:to_i)

  puts c[b] - c[a]
end
