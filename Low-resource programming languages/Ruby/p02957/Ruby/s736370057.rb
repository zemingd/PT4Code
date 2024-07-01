n = gets.strip.to_i
p =  gets.strip.split(' ').map(&:to_i)
count = 0
(0..(n-2)).each do |i|
  count += 1 if p[i] != i+1
end
msg = count <= 2 ? 'YES' : 'NO'
puts msg