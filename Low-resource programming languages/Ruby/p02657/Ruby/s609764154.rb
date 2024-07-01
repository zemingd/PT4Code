a = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i).sort

if ary.first == 0
  puts 0
else
  t = 1
  ary.each do |v|
    t *= v
    if t > 10 ** 18
      t = -1
      break
    end
  end
  puts t
end