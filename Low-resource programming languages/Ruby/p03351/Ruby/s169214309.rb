a, b, c, d = gets.split(' ').map(&:to_i)

r = 0..d

f1 = r === (a - c).abs
f2 = r === (a - b).abs && r === (b - c).abs

puts f1 || f2 ? 'Yes' : 'No'