a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i
puts (a-b).abs+w*t>v*t ? 'NO' : 'YES'
