n = gets.chomp
s = 0

n.length.times do |i|
  s += n[i].to_i
end

if n.to_i % s == 0
  puts 'YES'
else
  puts 'NO'
end
