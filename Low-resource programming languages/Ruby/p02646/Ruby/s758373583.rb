a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.chomp.to_i

if a == b
  puts 'YES'
  exit
end

if w >= v
  puts 'NO'
  exit
end

l = (a-b).abs
oi = l/(v-w)

if oi <= t
  puts 'YES'
else
  puts
  'NO'
end
