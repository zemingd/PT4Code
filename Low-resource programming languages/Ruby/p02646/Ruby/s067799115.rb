a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i

if v <= w
    puts 'NO'
elsif
  (0..t).each do |i|
    if (i * v) + a == (i * w) + b
    puts 'YES'
    end
  end
else puts 'NO'
end