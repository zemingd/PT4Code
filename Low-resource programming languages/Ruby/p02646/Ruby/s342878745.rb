a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i

if v <= w
    puts 'NO'
end

(0..t).each do |i|
  if (i * v) + a == (i * w) + b
    puts 'YES'
    break
  else puts 'NO'
  end
end