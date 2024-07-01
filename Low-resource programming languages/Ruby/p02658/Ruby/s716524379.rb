a = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i)
t = 0

if ary.first == 0
  puts 0
else
  t = 1
  ary.each do |v|
    t *= v
  end
end

if t > 10 ** 18
  puts -1
else
  puts t
end