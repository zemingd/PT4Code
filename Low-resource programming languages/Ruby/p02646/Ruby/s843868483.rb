a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i
ans = 'NO'

(0..t).each do |i|
  if (i * v) + a == (i * w) + b
    ans = 'YES'
  end
end
puts ans