a,v = gets.split(' ').map(&:to_i)
b,w = gets.split(' ').map(&:to_i)
t = gets.to_i
#ans = false
dist = (b-a).abs
if v == w
  puts 'NO'
elsif v < w
  puts 'NO'
else
  if dist <= (v-w)*t
    puts 'YES'
  else
    puts 'NO'
  end
end