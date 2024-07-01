tmp = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i)

if ary.include?(0)
  puts 0
else
  t = ary.inject{|v1, v2| v1*v2}
  if t > (10 ** 18)
    puts -1
  else
    puts t
  end
end