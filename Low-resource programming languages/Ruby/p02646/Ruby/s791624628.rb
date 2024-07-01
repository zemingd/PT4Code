a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.chomp.to_i

if w >= v
  puts 'NO'
  exit
end

l = (a-b).abs
oi = l.to_f/(v-w)

if oi <= t
  puts 'YES'
else
  puts 'NO'
end
