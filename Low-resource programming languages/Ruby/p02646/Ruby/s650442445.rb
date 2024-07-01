A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i

d = (A - B).abs
t = (V - W)

if d <= T * t
  puts 'YES'
else
  puts 'NO'
end
