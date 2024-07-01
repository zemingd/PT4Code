a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i

(0..t).each do |i|
  if i * a == i * b
    puts 'YES'
    break
  end
end
puts 'NO'